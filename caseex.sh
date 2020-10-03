#! /bin/bash

for file in $(ls);
do

	extension=$( echo $file | awk -F. '{print $2}')
	case $extension in
		java) echo "$file is java file"
			;;
		pdf) echo "$file is pdf file"
			;;
		sh) echo "$file is shell script file"
			;;
		txt) echo "$file is Text file"
			;;
		*) echo "$file extension is not found"
			;;
	esac
done
