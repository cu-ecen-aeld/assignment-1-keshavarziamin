#/bin/sh


if [ $# -ne 2 ]
then
    echo "the number of arguments is not valid"
    exit 1
fi

file_name=$1
file_dir=$(dirname $file_name)
write_str=$2

# checking the exsitence of directory
if [ ! -d "$file_dir" ]
then
    #create directory
    mkdir -p  $file_dir

fi
#create file
touch $file_name

#checking that the file was created
if [ ! -f "$file_name" ]
then
    exit 1 #exit if the file does not exsit
fi

#write the string in file
echo $write_str >> $file_name

# finder_out=$(./finder.sh $file_name $file_name)
# echo $finder_out
