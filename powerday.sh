#!bin/bash

HORASDETRABAJO=2
MINUTOSDEENTRENAMIENTO=2
ROUNDS=2
REMAINING=60



 
for (( r=0; r<$ROUNDS; r++ ))
do
	for (( h=1; h<$HORASDETRABAJO; h++ ))	
	do
		for (( m=1; m<60; m++ ))
		do
			for s in {1..60}
			do
				clear
				printf -v sec '%02d' $((60-$s))
				printf -v min "%02d" $((60-$m))
				echo "ROUND $((r+1))" | figlet
				echo "$(($HORASDETRABAJO - $h)) : $min: $sec" | figlet
				sleep 1
			
			done
		done	
	done
	for (( m=1; m<$MINUTOSDEENTRENAMIENTO; m++))
	do
		for s in {1..60}
		do
			clear
			printf -v sec '%02d' $((60-$s))
			printf -v min "%02d" $(($MINUTOSDEENTRENAMIENTO-$m))
			echo "DESCANSO $((r+1))" | figlet
			echo "$min: $sec" | figlet
			sleep 1
		done
	done			
done
