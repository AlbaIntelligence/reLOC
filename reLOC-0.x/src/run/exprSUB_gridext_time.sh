SIZE=$1
ENCODING=$2
ROBOT_LIST=`cat $3`
SEED_LIST=`cat seeds`

echo $ROBOT_LIST
echo $SEED_LIST
echo 'ecoding    =' $ENCODING

for ROBOTS in $ROBOT_LIST;
do
    for SEED in $SEED_LIST;
    do
    
	echo $ROBOTS
	echo '  ' $SEED
    
	#echo '../insolver_reLOC --input-file=grid_'$SIZE'x'$SIZE'_r'$ROBOTS'_'$SEED'.cpf --total-timeout='$TIMEOUT' --minisat-timeout='$TIMEOUT '--encoding='$ENCODING' --output-file=grid_'$SIZE'x'$SIZE'_r'$ROBOTS'_'$SEED'_'$ENCODING'.out > grid_'$SIZE'x'$SIZE'_r'$ROBOTS'_'$SEED'_'$ENCODING'.txt'
	#../insolver_reLOC '--input-file=grid_'$SIZE'x'$SIZE'_r'$ROBOTS'_'$SEED'.cpf' '--total-timeout='$TIMEOUT '--minisat-timeout='$TIMEOUT '--encoding='$ENCODING '--output-file=grid_'$SIZE'x'$SIZE'_r'$ROBOTS'_'$SEED'_'$ENCODING'.out' > 'grid_'$SIZE'x'$SIZE'_r'$ROBOTS'_'$SEED'_'$ENCODING'.txt'

	grep "machine TIME " 'grid_'$SIZE'x'$SIZE'_r'$ROBOTS'_'$SEED'_'$ENCODING'.txt'
    done
done
