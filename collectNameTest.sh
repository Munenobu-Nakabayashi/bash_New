#!/binbash
set -euxo pipefail
CURDIR=$(pwd)
cd "$(dirname "$0")"

cat /dev/null > ./workFile.txt
workFile=./workFile.txt
cat /dev/null > ./resultFile.txt
resultFile=./resultFile.txt

declare -a fileNames
fileNames=()
fileNames=("./alllog_win_20240602.txt" "./alllog_win_20240609.txt" "./alllog_win_20240616.txt" "./alllog_win_20240623.txt" "./alllog_win_20240630.txt")

for fileName in ${fileNames[@]}; do

	### echo "${fileName}" >> "${workFile}"
	cut -d "/" -f 1 "${fileName}" >> "${workFile}" 
	### echo "" >> "${resultFile}"
done

cat "${workFile}" | sort | uniq >> "${resultFile}"

exit
