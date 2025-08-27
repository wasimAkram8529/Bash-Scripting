str="The quick brown fox jumps over the lazy dog"
echo $str
echo ${str:6:5}
echo ${#str}
replaced_str=${str//quick/slow}
echo $replaced_str
echo {1..5}

echo $str | awk '{gsub(/slow/, "quick"); print}'
