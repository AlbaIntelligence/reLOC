PREFIX='warehouse-10-20-10-2-1'

SCENARIOS_FILE="scenarios_"$PREFIX
SCENARIOS_LIST=`cat $SCENARIOS_FILE`

for SCENARIO in $SCENARIOS_LIST;
do
    './expr_'$PREFIX'_solve-utx.sh' $SCENARIO &
done
