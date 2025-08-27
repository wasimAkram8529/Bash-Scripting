dir=$(pwd)
for file in ${dir}/*
do
  linecount=$(wc -l $file)
  echo "Number of line in $file is $linecount"
done  
