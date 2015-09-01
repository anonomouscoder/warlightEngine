#!/bin/bash
aWins=0
bWins=0
ties=0
result=0
numMaps=10
order=0
printf "">runsh.txt
for i in `seq 1 $1`;
do
	#printf "\n"
	map="./maps/smallmap.txt"
	if [[ "$i % $numMaps" -eq 0 ]]; then
		map="./maps/example-map.txt"
	elif [[ "$i % $numMaps" -eq 1 ]]; then
		map="./maps/largemap.txt"		
	elif [[ "$i % $numMaps" -eq 2 ]]; then
		map="./maps/separated.txt"	
	elif [[ "$i % $numMaps" -eq 3 ]]; then
		map="./maps/smallmap.txt"	
	elif [[ "$i % $numMaps" -eq 4 ]]; then
		map="./maps/fullymap.txt"	
	elif [[ "$i % $numMaps" -eq 5 ]]; then
		map="./maps/moremap1.txt"	
	elif [[ "$i % $numMaps" -eq 6 ]]; then
		map="./maps/moremap2.txt"	
	elif [[ "$i % $numMaps" -eq 7 ]]; then
		map="./maps/moremap3.txt"	
	elif [[ "$i % $numMaps" -eq 8 ]]; then
		map="./maps/moremap4.txt"	
	elif [[ "$i % $numMaps" -eq 9 ]]; then
		map="./maps/moremap5.txt"	
	fi
	if [ "$map" == "./maps/example-map.txt" ]; then
		if [ "$order" == "1" ]; then
			order=0
		else
			order=1
		fi
	fi
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
echo -ne "\r"
gamesPlayed=$[$aWins+$bWins+$ties]
echo -ne "a: $aWins $[$aWins*100/$gamesPlayed]%, b: $bWins $[$bWins*100/$gamesPlayed]%, tie: $ties $[$ties*100/$gamesPlayed]%, total: $gamesPlayed   \n"
bash analyzeRuns.sh
