for file in /home/wasim/backup/random_dir/*
do
	tar -czf "$file.zip" "$file"
done	
