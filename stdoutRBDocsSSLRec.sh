#!/binbash
set -euxo pipefail
CURDIR=$(pwd)
cd "$(dirname "$0")"

cat /dev/null > ./oneLineFile.txt
oneLineFile=./oneLineFile.txt
cat /dev/null > ./rbDocsSSLFile.csv
rbDocsSSLFile=./rbDocsSSLFile.csv

declare -a fileNames
fileNames=()
fileNames=("./alllog_win_20240602.txt" "./alllog_win_20240609.txt" "./alllog_win_20240616.txt" "./alllog_win_20240623.txt" "./alllog_win_20240630.txt")

# The bash script does not have two dimensions array! Necessarily inevitably unavoidably reluctantly...
declare -a domNameArr
domNameArr=()
domNameArr=("AMdocs-ssl/" "AMdocs-ssl:8443/" "CDdocs-ssl/" "CDdocs-ssl:8443/" "FGdocs-ssl/" "FGdocs-ssl:8443/" "GR2docs/" "GR2docs-ssl/" "GR2docs-ssl:8443/" "GR2docs:8080/" "GR2docs:8443/" "GR2docs:88/" "KMdocs/" "KMdocs-ssl/" "KMdocs-ssl:8443/" "KMdocs:8080/" "KMdocs:8443/" "KMdocs:88/" "KOdocs/" "KOdocs-ssl/" "KSdocs-ssl/" "KSdocs-ssl:8443/" "MBdocs-ssl/" "MBdocs-ssl:8443/" "RBdocs/" "RBdocs-ssl/" "RBdocs-ssl:443/" "RBdocs-ssl:443@5u090lxltrtuq4rpo38gohszkqqkea23srie82x.oastify.com/" "RBdocs-ssl:8443/" "RBdocs:8080/" "RBdocs:8443/" "RBdocs:88/" "SRdocs/" "SRdocs-ssl/" "SRdocs-ssl:443/" "SRdocs-ssl:8443/" "SRdocs:443/" "SRdocs:8080/" "SRdocs:8443/" "SRdocs:88/" "TBdocs/" "TBdocs:8080/" "TBdocs:8443/" "TBdocs:88/" "docs/" "docs-ssl/" "docs-ssl:443/" "docs-ssl:8443/" "docs:8080/" "docs:8443/" "docs:88/" "wss:/" "(N/A)")
slush="/"	# Joint to domNameArr

domName=0
domURL=0
domCnt=0
### domCntA=0
### domCntB=0
### domCntC=0

### domCnt0=0
### domCnt1=0
### domCnt2=0
### domCnt3=0
### domCnt4=0
### domCnt5=0
### domCnt6=0
### domCnt7=0
### domCnt8=0
### domCnt9=0
### domCnt10=0
### domCnt11=0
### domCnt12=0
### domCnt13=0
### domCnt14=0
### domCnt15=0
### domCnt16=0
### domCnt17=0
### domCnt18=0
### domCnt19=0
### domCnt20=0
### domCnt21=0
### domCnt22=0
### domCnt23=0
### domCnt24=0
### domCnt25=0
### domCnt26=0
### domCnt27=0
### domCnt28=0
### domCnt29=0
### domCnt30=0
### domCnt31=0
### domCnt32=0
### domCnt33=0
### domCnt34=0
### domCnt35=0
### domCnt36=0
### domCnt37=0
### domCnt38=0
### domCnt39=0
### domCnt40=0
### domCnt41=0
### domCnt42=0
### domCnt43=0
### domCnt44=0
### domCnt45=0
### domCnt46=0
### domCnt47=0
### domCnt48=0
### domCnt49=0
### domCnt50=0
### domCnt51=0
### domCnt52=0	# for N/A

j=0

for fileName in ${fileNames[@]}; do

	# Internal Loop	
	while read line1
	do
		echo "${line1}" > "${oneLineFile}"

		# Add a slush "/" to the tail of domain name string. 
		domName=$(cut -d "/" -f 1 "${oneLineFile}" | tee /dev/tty)${slush}
		domURL=$(cut -d " " -f 1 "${oneLineFile}" | tee /dev/tty)${slush}
		domCnt=$(awk '{ print $2 }' "${oneLineFile}" | tee /dev/tty)

		case "${domName}" in 
			"${domNameArr[0]}")
				### domCntB=${domCntArr[0]}
				### domCntB=${domCnt0}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt0=${domCntC};;
				;;
			"${domNameArr[1]}")
				### domCntB=${domCnt1}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt1=${domCntC};;
				;;
			"${domNameArr[2]}")
				### domCntB=${domCnt2}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt2=${domCntC};;
				;;
			"${domNameArr[3]}")
				### domCntB=${domCnt3}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt3=${domCntC};;
				;;
			"${domNameArr[4]}")
				### domCntB=${domCnt4}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt4=${domCntC};;
				;;
			"${domNameArr[5]}")
				### domCntB=${domCnt5}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt5=${domCntC};;
				;;
			"${domNameArr[6]}")
				### domCntB=${domCnt6}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt6=${domCntC};;
				;;
			"${domNameArr[7]}")
				### domCntB=${domCnt7}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt7=${domCntC};;
				;;
			"${domNameArr[8]}")
				### domCntB=${domCnt8}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt8=${domCntC};;
				;;
			"${domNameArr[9]}")
				### domCntB=${domCnt9}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt9=${domCntC};;
				;;
			"${domNameArr[10]}")
				### domCntB=${domCnt10}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt10=${domCntC};;
				;;
			"${domNameArr[11]}")
				### domCntB=${domCnt11}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt11=${domCntC};;
				;;
			"${domNameArr[12]}")
				### domCntB=${domCnt12}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt12=${domCntC};;
				;;
			"${domNameArr[13]}")
				### domCntB=${domCnt13}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt13=${domCntC};;
				;;
			"${domNameArr[14]}")
				### domCntB=${domCnt14}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt14=${domCntC};;
				;;
			"${domNameArr[15]}")
				### domCntB=${domCnt15}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt15=${domCntC};;
				;;
			"${domNameArr[16]}")
				### domCntB=${domCnt16}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt16=${domCntC};;
				;;
			"${domNameArr[17]}")
				### domCntB=${domCnt17}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt17=${domCntC};;
				;;
			"${domNameArr[18]}")
				### domCntB=${domCnt18}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt18=${domCntC};;
				;;
			"${domNameArr[19]}")
				### domCntB=${domCnt19}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt19=${domCntC};;
				;;
			"${domNameArr[20]}")
				### domCntB=${domCnt20}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt20=${domCntC};;
				;;
			"${domNameArr[21]}")
				### domCntB=${domCnt21}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt21=${domCntC};;
				;;
			"${domNameArr[22]}")
				### domCntB=${domCnt22}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt22=${domCntC};;
				;;
			"${domNameArr[23]}")
				### domCntB=${domCnt23}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt23=${domCntC};;
				;;
			"${domNameArr[24]}")
				### domCntB=${domCnt24}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt24=${domCntC};;
				;;
			"${domNameArr[25]}")
				### domCntB=${domCnt25}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt25=${domCntC};;
				echo ${line1} >> ${rbDocsSSLFile};;
				########## echo ${domURL},${domCnt} >> ${rbDocsSSLFile};;
			"${domNameArr[26]}")
				### domCntB=${domCnt26}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt26=${domCntC};;
				;;
			"${domNameArr[27]}")
				### domCntB=${domCnt27}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt27=${domCntC};;
				;;
			"${domNameArr[28]}")
				### domCntB=${domCnt28}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt28=${domCntC};;
				;;
			"${domNameArr[29]}")
				### domCntB=${domCnt29}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt29=${domCntC};;
				;;
			"${domNameArr[30]}")
				### domCntB=${domCnt30}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt30=${domCntC};;
				;;
			"${domNameArr[31]}")
				### domCntB=${domCnt31}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt31=${domCntC};;
				;;
			"${domNameArr[32]}")
				### domCntB=${domCnt32}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt32=${domCntC};;
				;;
			"${domNameArr[33]}")
				### domCntB=${domCnt33}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt33=${domCntC};;
				;;
			"${domNameArr[34]}")
				### domCntB=${domCnt34}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt34=${domCntC};;
				;;
			"${domNameArr[35]}")
				### domCntB=${domCnt35}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt35=${domCntC};;
				;;
			"${domNameArr[36]}")
				### domCntB=${domCnt36}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt36=${domCntC};;
				;;
			"${domNameArr[37]}")
				### domCntB=${domCnt37}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt37=${domCntC};;
				;;
			"${domNameArr[38]}")
				### domCntB=${domCnt38}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt38=${domCntC};;
				;;
			"${domNameArr[39]}")
				### domCntB=${domCnt39}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt39=${domCntC};;
				;;
			"${domNameArr[40]}")
				### domCntB=${domCnt40}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt40=${domCntC};;
				;;
			"${domNameArr[41]}")
				### domCntB=${domCnt41}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt41=${domCntC};;
				;;
			"${domNameArr[42]}")
				### domCntB=${domCnt42}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt42=${domCntC};;
				;;
			"${domNameArr[43]}")
				### domCntB=${domCnt43}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt43=${domCntC};;
				;;
			"${domNameArr[44]}")
				### domCntB=${domCnt44}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt44=${domCntC};;
				;;
			"${domNameArr[45]}")
				### domCntB=${domCnt45}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt45=${domCntC};;
				;;
			"${domNameArr[46]}")
				### domCntB=${domCnt46}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt46=${domCntC};;
				;;
			"${domNameArr[47]}")
				### domCntB=${domCnt47}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt47=${domCntC};;
				;;
			"${domNameArr[48]}")
				### domCntB=${domCnt48}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt48=${domCntC};;
				;;
			"${domNameArr[49]}")
				### domCntB=${domCnt49}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt49=${domCntC};;
				;;
			"${domNameArr[50]}")
				### domCntB=${domCnt50}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt50=${domCntC};;
				;;
			"${domNameArr[51]}")
				### domCntB=${domCnt51}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt51=${domCntC};;
				;;
			*)	# for N/A (52)
				### domCntB=${domCnt52}
				### domCntC=$(( domCntB + domCntA ))
				### domCnt52=${domCntC};;
				;;
		esac

		# Re-initialize the OneLineFile.
		cat /dev/null > "${oneLineFile}"

	done < "${fileName}"

done

# Standard Out to a CSV File. 
### for ((i=0; i<53; i++))
### do
###	case "${i}" in
###		0)
###			echo ${i},${domNameArr[${i}]},${domCnt0} >> ${totalFile};;
###		1)
###			echo ${i},${domNameArr[${i}]},${domCnt1} >> ${totalFile};;
###		2)
###			echo ${i},${domNameArr[${i}]},${domCnt2} >> ${totalFile};;
###		3)
###			echo ${i},${domNameArr[${i}]},${domCnt3} >> ${totalFile};;
###		4)
###			echo ${i},${domNameArr[${i}]},${domCnt4} >> ${totalFile};;
###		5)
###			echo ${i},${domNameArr[${i}]},${domCnt5} >> ${totalFile};;
###		6)
###			echo ${i},${domNameArr[${i}]},${domCnt6} >> ${totalFile};;
###		7)
###			echo ${i},${domNameArr[${i}]},${domCnt7} >> ${totalFile};;
###		8)
###			echo ${i},${domNameArr[${i}]},${domCnt8} >> ${totalFile};;
###		9)
###			echo ${i},${domNameArr[${i}]},${domCnt9} >> ${totalFile};;
###		10)
###			echo ${i},${domNameArr[${i}]},${domCnt10} >> ${totalFile};;
###		11)
###			echo ${i},${domNameArr[${i}]},${domCnt11} >> ${totalFile};;
###		12)
###			echo ${i},${domNameArr[${i}]},${domCnt12} >> ${totalFile};;
###		13)
###			echo ${i},${domNameArr[${i}]},${domCnt13} >> ${totalFile};;
###		14)
###			echo ${i},${domNameArr[${i}]},${domCnt14} >> ${totalFile};;
###		15)
###			echo ${i},${domNameArr[${i}]},${domCnt15} >> ${totalFile};;
###		16)
###			echo ${i},${domNameArr[${i}]},${domCnt16} >> ${totalFile};;
###		17)
###			echo ${i},${domNameArr[${i}]},${domCnt17} >> ${totalFile};;
###		18)
###			echo ${i},${domNameArr[${i}]},${domCnt18} >> ${totalFile};;
###		19)
###			echo ${i},${domNameArr[${i}]},${domCnt19} >> ${totalFile};;
###		20)
###			echo ${i},${domNameArr[${i}]},${domCnt20} >> ${totalFile};;
###		21)
###			echo ${i},${domNameArr[${i}]},${domCnt21} >> ${totalFile};;
###		22)
###			echo ${i},${domNameArr[${i}]},${domCnt22} >> ${totalFile};;
###		23)
###			echo ${i},${domNameArr[${i}]},${domCnt23} >> ${totalFile};;
###		24)
###			echo ${i},${domNameArr[${i}]},${domCnt24} >> ${totalFile};;
###		25)
###			echo ${i},${domNameArr[${i}]},${domCnt25} >> ${totalFile};;
###		26)
###			echo ${i},${domNameArr[${i}]},${domCnt26} >> ${totalFile};;
###		27)
###			echo ${i},${domNameArr[${i}]},${domCnt27} >> ${totalFile};;
###		28)
###			echo ${i},${domNameArr[${i}]},${domCnt28} >> ${totalFile};;
###		29)
###			echo ${i},${domNameArr[${i}]},${domCnt29} >> ${totalFile};;
###		30)
###			echo ${i},${domNameArr[${i}]},${domCnt30} >> ${totalFile};;
###		31)
###			echo ${i},${domNameArr[${i}]},${domCnt31} >> ${totalFile};;
###		32)
###			echo ${i},${domNameArr[${i}]},${domCnt32} >> ${totalFile};;
###		33)
###			echo ${i},${domNameArr[${i}]},${domCnt33} >> ${totalFile};;
###		34)
###			echo ${i},${domNameArr[${i}]},${domCnt34} >> ${totalFile};;
###		35)
###			echo ${i},${domNameArr[${i}]},${domCnt35} >> ${totalFile};;
###		36)
###			echo ${i},${domNameArr[${i}]},${domCnt36} >> ${totalFile};;
###		37)
###			echo ${i},${domNameArr[${i}]},${domCnt37} >> ${totalFile};;
###		38)
###			echo ${i},${domNameArr[${i}]},${domCnt38} >> ${totalFile};;
###		39)
###			echo ${i},${domNameArr[${i}]},${domCnt39} >> ${totalFile};;
###		40)
###			echo ${i},${domNameArr[${i}]},${domCnt40} >> ${totalFile};;
###		41)
###			echo ${i},${domNameArr[${i}]},${domCnt41} >> ${totalFile};;
###		42)
###			echo ${i},${domNameArr[${i}]},${domCnt42} >> ${totalFile};;
###		43)
###			echo ${i},${domNameArr[${i}]},${domCnt43} >> ${totalFile};;
###		44)
###			echo ${i},${domNameArr[${i}]},${domCnt44} >> ${totalFile};;
###		45)
###			echo ${i},${domNameArr[${i}]},${domCnt45} >> ${totalFile};;
###		46)
###			echo ${i},${domNameArr[${i}]},${domCnt46} >> ${totalFile};;
###		47)
###			echo ${i},${domNameArr[${i}]},${domCnt47} >> ${totalFile};;
###		48)
###			echo ${i},${domNameArr[${i}]},${domCnt48} >> ${totalFile};;
###		49)
###			echo ${i},${domNameArr[${i}]},${domCnt49} >> ${totalFile};;
###		50)
###			echo ${i},${domNameArr[${i}]},${domCnt50} >> ${totalFile};;
###		51)
###			echo ${i},${domNameArr[${i}]},${domCnt51} >> ${totalFile};;
###		52)	# for N/A
###			echo ${i},${domNameArr[${i}]},${domCnt52} >> ${totalFile};;
###	esac	
### done

exit
