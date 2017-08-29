#! /bin/bash

for i in `seq 1 $3`;
do
	echo "attempt $i:"
	cat $1 | radamsa --count 1 > out/$i
	eval ./$2 out/$i
	echo -e "\n"
done

echo -e "\n\nfuzzing done!"
