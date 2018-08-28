
#!/bin/bash
for file in $(ls /var/named/*.db);
do
if [ -f $file ];
then 
OLD=`egrep -ho "201[0-9]{7}" $file`
NEW=$(($OLD + 1)) 
sed -i "s/$OLD/$NEW/g" $file 
echo "fixed $file" 
fi
done
