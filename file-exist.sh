read -p "Enter filename: " dir
if [ -e $dir ]; then
	echo "filename ${dir} exists"
else
        echo "filename ${dir} not exists"
fi	
