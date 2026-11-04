#!/bib/bash
NUM1=10
NUM2=20

SUM=$(($NUM1+$NUM2))

echo "total sum: = $SUM"

MOVIES=("RRR" "varanasi" "pushpa")
echo "Movies are: ${MOVIES[@]}"
echo "First Movie is: ${MOVIES[0]}"
echo "Second Movie is: ${MOVIES[1]}"
echo "Third Movie is: ${MOVIES[2]}"