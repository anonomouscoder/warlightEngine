firstPlayerWins=$(cat runsh.txt | grep -c "player1 = a.*winner: player1")
secondPlayerWins=$(cat runsh.txt | grep -c "player2 = a.*winner: player2")
largemapWins=$[`cat runsh.txt | grep -c "largemap.*player1 = a.*winner: player1"`+`cat runsh.txt | grep -c "largemap.*player2 = a.*winner: player2"`]
separatedWins=$[`cat runsh.txt | grep -c "separated.*player1 = a.*winner: player1"`+`cat runsh.txt | grep -c "separated.*player2 = a.*winner: player2"`]
smallmapWins=$[`cat runsh.txt | grep -c "smallmap.*player1 = a.*winner: player1"`+`cat runsh.txt | grep -c "smallmap.*player2 = a.*winner: player2"`]
fullymapWins=$[`cat runsh.txt | grep -c "fullymap.*player1 = a.*winner: player1"`+`cat runsh.txt | grep -c "fullymap.*player2 = a.*winner: player2"`]
moremap1Wins=$[`cat runsh.txt | grep -c "moremap1.*player1 = a.*winner: player1"`+`cat runsh.txt | grep -c "moremap1.*player2 = a.*winner: player2"`]
moremap2Wins=$[`cat runsh.txt | grep -c "moremap2.*player1 = a.*winner: player1"`+`cat runsh.txt | grep -c "moremap2.*player2 = a.*winner: player2"`]
moremap3Wins=$[`cat runsh.txt | grep -c "moremap3.*player1 = a.*winner: player1"`+`cat runsh.txt | grep -c "moremap3.*player2 = a.*winner: player2"`]
moremap4Wins=$[`cat runsh.txt | grep -c "moremap4.*player1 = a.*winner: player1"`+`cat runsh.txt | grep -c "moremap4.*player2 = a.*winner: player2"`]
moremap5Wins=$[`cat runsh.txt | grep -c "moremap5.*player1 = a.*winner: player1"`+`cat runsh.txt | grep -c "moremap5.*player2 = a.*winner: player2"`]



printf "p1 wins: $firstPlayerWins \n"
printf "p2 wins: $secondPlayerWins \n"
printf "largemapWins: $largemapWins \n"
printf "separatedWins: $separatedWins \n"
printf "smallmapWins: $smallmapWins \n"
printf "fullymapWins: $fullymapWins \n"
printf "moremap1Wins: $moremap1Wins \n"
printf "moremap2Wins: $moremap2Wins \n"
printf "moremap3Wins: $moremap3Wins \n"
printf "moremap4Wins: $moremap4Wins \n"
printf "moremap5Wins: $moremap5Wins \n"
