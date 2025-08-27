for file in ~/backup/*
do
	count_line=$(cat ${file} | wc -l)
	echo "Number of line in ${file} is ${count_line}"
done
echo "File count completed"
