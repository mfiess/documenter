#!/bin/sh

rm -rf dist
if [ "$#" -eq 0 ]
then
  echo "Usage : generateDocument <project settings>"
  exit 1;
fi 

if [ ! -f $1 ]
then
  echo "Project settings does not exists"
  exit 1;
fi

projectSettings=$1
echo "Project settings is $projectSettings"

#generate configuration
doxygen  -g config

replace_pattern()
{
  sed -i "s|.*$1.*=.*|$2|g" config
}

#update with default configuration
while IFS= read -r line
do
  field=`echo $line|cut -d "=" -f1`
  replace_pattern $field "$line"
done < defaultSettings

#update with project defined configuration
cat $projectSettings>>config

#generate document
doxygen config
rm config
