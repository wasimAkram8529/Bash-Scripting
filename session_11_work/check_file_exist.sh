read -p "Enter filename: " filename
if [ -f $filename ]; then
        echo "filename ${filename} exists"
else
        echo "filename ${filename} not exists"
fi
