ROBOT_LIST=`cat robots_mazes`
SEED_LIST=`cat seeds_10`
SIZE=16

for ROBOTS in $ROBOT_LIST;
do
  for SEED in $SEED_LIST;	
  do            
    echo $ROBOTS,$SEED
     grep "machine TIME" 'mapf-mddu_maze32_a'$ROBOTS'_'$SEED'.txt'
     grep "clauses" 'mapf-mddu_maze32_a'$ROBOTS'_'$SEED'.txt'
  done
done
