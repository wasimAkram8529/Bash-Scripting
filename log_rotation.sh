#!/bin/bash

source_dir="./log_file"
max_log_file=5

echo $source_dir

for ((i=max_log_file; i>0; i--))
do
  if [[ -f "${source_dir}/my_log.${i}.log.gz" ]]
  then
    mv "$source_dir/my_log.${i}.gz" "$source_dir/my_log.$((i+1)).gz"
  fi
done

if [[ -f "${source_dir}/my_log.${max_log_file}.gz" ]]
then
    rm "${source_dir}/my_log.${max_log_file}.gz"
fi

touch "${source_dir}/my_log.1.log"
gzip "${source_dir}/my_log.1.log"
