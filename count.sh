# 
# the number of distinct occurences of each species
# in that file. Results are displayed in alphabetical order
# by species name
for filename in data/*.txt
do
   echo $filename
   grep -v Species $filename | cut -d , -f 2 | sort | uniq -c | sort -n -r
done