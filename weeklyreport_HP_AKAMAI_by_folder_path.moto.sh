#!/bin/bash

NO1_ARG=$1	# No.1 Arg
LF_FILE=${NO1_ARG}.lf

function main() {
	cat /dev/null > ${LF_FILE}
	cat ${NO1_ARG} | sed -e  's/\r//g' > ${LF_FILE}	# \r\n -> \n

	classify_by_folders 
}

function classify_by_folders() {

  	# No.1 Arg is the Original "_akamai.txt" file
  	ORG_FILE=${LF_FILE}		# "_akamai_dummy.txt" LF "kaigyou" File
  	SORT_FILE=""          		# Sorted "Chukan File" in Japanese
	RE_SORT_FILE=""                 # Re_Sorted "Chukan FIle" in Japanese
  	BY_FOLDER_PATH_FILE=""  	# Collected "By Folder Path" file
  	### BY_FOLDER_PATH_CSV_FILE=""  	# Collected "By Folder Path" file
  	ONE_LINE_FILE=""      		# One Line File Redirected by SORT_FILE  
  	FOLDER_PATH=""        		# Folder Path
  	SAVED_FOLDER_PATH=""  		# Folder Path (Use to Detect "Control Break")
  	SUM=0                 		# Sum Up by Folder Path
  	SLUSH="/"

  	# Generate New Files 
  	### BY_FOLDER_PATH_FILE=${$1//_dummy/_by_folder_path}
  	BY_FOLDER_PATH_FILE=$(echo ${LF_FILE} | sed "s/.txt.lf/_by_folder_path.txt/g")
  	### BY_FOLDER_PATH_CSV_FILE=$(echo ${BY_FOLDER_PATH_FILE} | sed "s/.txt/.csv/g")
  	cat /dev/null > ${BY_FOLDER_PATH_FILE}
	### cat /dev/null > ${BY_FOLDER_PATH_CSV_FILE}
  	ONE_LINE_FILE=./one_line_file
  	cat /dev/null > ${ONE_LINE_FILE} 
  	### SORT_FILE=${${ORG_FILE}//_dummy/_sorted} 
  	SORT_FILE=$(echo ${ORG_FILE} | sed "s/lf/sorted/g")
	RE_SORT_FILE=$(echo ${SORT_FILE} | sed "s/sorted/re_sorted/g") 

  	sort ${ORG_FILE} > ${SORT_FILE}   # Sorted in ascending order ...

  	while read line1
  	do

      		echo ${line1} > "${ONE_LINE_FILE}"

      		folderpath=$(cut -d " " -f 1 "${ONE_LINE_FILE}" | tee /dev/tty)     # Nothing to do with this line ... But Get Args
      		cnt=$(awk '{ print $2 }' "${ONE_LINE_FILE}" | tee /dev/tty)         # e.q. RBdocs-ssl/hojin/b_direct/kitei/kitei.html "92")
      		if grep -q "?" ${ONE_LINE_FILE} > /dev/null; then                   # Check the "?" string
          		folderpath=$(cut -d "?" -f 1 "${ONE_LINE_FILE}" | tee /dev/tty) # Cut Off the "Query String"
          		echo ${folderpath} > "${ONE_LINE_FILE}"                         # And OverWrite the one line file
      		fi

		FOLDER_PATH=""
      		s_cnt=$(cat ${ONE_LINE_FILE} | grep -o "/" | wc -l | tee /dev/tty)  # Count the slushes "/" (At least, One. e.q. RBdocs-ssl/ 165389)
      		for ((i=1; i<=${s_cnt}; i++))
      		### for i in `seq 1 ${s_cnt}`
      		do
          		FOLDER_PATH=${FOLDER_PATH}$(cut -d "/" -f ${i} ${ONE_LINE_FILE})${SLUSH}        # Add a String "Backwards" (Not OverWrite!)
      		done

      		# Check "Control Break" Or Not
     		if [ "${FOLDER_PATH}" != "${SAVED_FOLDER_PATH}" ]; then                 	# "Control Break" Pattern
     		### if [ ${FOLDER_PATH} != ${SAVED_FOLDER_PATH} ]; then                 	# "Control Break" Pattern
			if [ "${SAVED_FOLDER_PATH}" != "" ]; then
          			echo ${SAVED_FOLDER_PATH}" "${SUM} >> ${BY_FOLDER_PATH_FILE}    	# Standard Out To the "akamai_by_folder_path.txt" File
          			### echo ${SAVED_FOLDER_PATH}","${SUM} >> ${BY_FOLDER_PATH_CSV_FILE}    	# Standard Out To the "akamai_by_folder_path.csv" File
			fi
          		# Change The Folder Path
          		SAVED_FOLDER_PATH=""
          		SAVED_FOLDER_PATH=${FOLDER_PATH}
          		SUM=0
          		SUM=${cnt}
      		else  # Same Pattern (Not Control Break)
          		SUM=$((${SUM}+${cnt}))                                        	# Count Up in the same folder path
      		fi
	
      		cat /dev/null > ${ONE_LINE_FILE}                                    	# Initialize the one line work file

  	done < "${SORT_FILE}"

        echo ${SAVED_FOLDER_PATH}" "${SUM} >> ${BY_FOLDER_PATH_FILE}		# Standard Out at last
        ### echo ${SAVED_FOLDER_PATH}","${SUM} >> ${BY_FOLDER_PATH_CSV_FILE}	# Standard Out at last


  	sort ${BY_FOLDER_PATH_FILE} > ${RE_SORT_FILE}	# Sorted in ascending order ...

	${FOLDER_PATH}=""
	${SAVED_FOLDER_PATH}=""
	
  	cat /dev/null > ${BY_FOLDER_PATH_FILE}		# Initialize the result file

  	while read line2
	do

      		echo ${line2} > "${ONE_LINE_FILE}"
		FOLDER_PATH=$(cut -d " " -f 1 "${ONE_LINE_FILE}" | tee /dev/tty)    # Nothing to do with this line ... But Get Args
		cnt=$(awk '{ print $2 }' "${ONE_LINE_FILE}" | tee /dev/tty)         # e.q. RBdocs-ssl/hojin/b_direct/kitei/kitei.html "92")

     		if [ "${FOLDER_PATH}" != "${SAVED_FOLDER_PATH}" ]; then                 	# "Control Break" Pattern
			if [ "${SAVED_FOLDER_PATH}" != "" ]; then
				echo ${SAVED_FOLDER_PATH}" "${SUM} >> ${BY_FOLDER_PATH_FILE} 	# Standard Out To the "akamai_by_folder_path.txt" File
			fi
			# Change The Folder Path
			SAVED_FOLDER_PATH=""
			SAVED_FOLDER_PATH=${FOLDER_PATH}
			SUM=0
			SUM=${cnt}
		else  # Same Pattern (Not Control Break)
			SUM=$((${SUM}+${cnt}))                                          # Count Up in the same folder path
		fi
			
     		cat /dev/null > ${ONE_LINE_FILE}                                    	# Initialize the one line work file

	done < "${RE_SORT_FILE}"

        echo ${SAVED_FOLDER_PATH}" "${SUM} >> ${BY_FOLDER_PATH_FILE}		# Standard Out at last
  	
	# Remove the "Chukan" Files

  	rm -f ${LF_FILE}
  	rm -f ${SORT_FILE}
	rm -f ${RE_SORT_FILE}
  	rm -f ${ONE_LINE_FILE}

}

main

exit
