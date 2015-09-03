#!/bin/bash
aWins=0
bWins=0
ties=0
result=0
order=0
numMaps=`ls -1 maps | wc -l`
totalRuns=$[$1 * $numMaps * 2]
printf "Running $1 tests per map ( $numMaps ) as both player 1 and player 2: $totalRuns total runs\n "
printf "">runsh.txt
for i in `seq 1 $1`;
do
	for map in "maps"/* ;
	do	
		for order in `seq 0 1`; 
		do
			#printf "$map \t $order \t"
			result=$(bash run.sh $map $order | grep "winner: player.")
			printf "\t $result" >>runsh.txt
			if [ "$result" == "winner: player1" ]; then
				if [ "$order" == "0" ]; then
					bWins=$[$bWins+1]
					#printf "b"
				else
					aWins=$[$aWins+1]
					#printf "a"
				fi
			elif [ "$result" == "winner: player2" ]; then
				if [ "$order" == "0" ]; then
					aWins=$[$aWins+1]
					#printf "a"
				else
					bWins=$[$bWins+1]
					#printf "b"
				fi
			else
				ties=$[$ties+1]
				#printf "t"
			fi
			printf ", $aWins $bWins $ties" >>runsh.txt
			printf "\n" >>runsh.txt
			#printf "\n"
		#	echo -en "\b\b\b\b\b\b\b\b"
			echo -ne "\r"
			gamesPlayed=$[$aWins+$bWins+$ties]
			echo -ne "a: $aWins $[$aWins*100/$gamesPlayed]%, b: $bWins $[$bWins*100/$gamesPlayed]%, tie: $ties $[$ties*100/$gamesPlayed]%, total: $gamesPlayed   "

		done
	done
done
echo -ne "\r"
gamesPlayed=$[$aWins+$bWins+$ties]
echo -ne "a: $aWins $[$aWins*100/$gamesPlayed]%, b: $bWins $[$bWins*100/$gamesPlayed]%, tie: $ties $[$ties*100/$gamesPlayed]%, total: $gamesPlayed   \n"
bash analyzeRuns.sh
