sed '/^#/d' ms_data_dirty.csv | #remove comment lines
sed '/^$/d' | #remove empty lines
sed 's/,+"/,/g' | #replace more than one comma with just one comma
sed 's/ +"/ /g'| #replace any instance of multiple spaces with just one space
cut -d, -f1,2,4,5,6 > ms_data.csv #extract specific cols and save to new csv file