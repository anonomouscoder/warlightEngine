firstPlayerWins=$(cat runsh.txt | grep -c "player1 = a.*winner: player1")
secondPlayerWins=$(cat runsh.txt | grep -c "player2 = a.*winner: player2")

largemapWins1=$[`cat runsh.txt | grep -c "largemap.*player1 = a.*winner: player1"`]
largemapWins2=$[`cat runsh.txt | grep -c "largemap.*player2 = a.*winner: player2"`]
largemapWins=$[$largemapWins1+$largemapWins2]

separatedWins1=$[`cat runsh.txt | grep -c "separated.*player1 = a.*winner: player1"`]
separatedWins2=$[`cat runsh.txt | grep -c "separated.*player2 = a.*winner: player2"`]
separatedWins=$[$separatedWins1+$separatedWins2]

smallmapWins1=$[`cat runsh.txt | grep -c "smallmap.*player1 = a.*winner: player1"`]
smallmapWins2=$[`cat runsh.txt | grep -c "smallmap.*player2 = a.*winner: player2"`]
smallmapWins=$[$smallmapWins1+$smallmapWins2]

fullymapWins1=$[`cat runsh.txt | grep -c "fullymap.*player1 = a.*winner: player1"`]
fullymapWins2=$[`cat runsh.txt | grep -c "fullymap.*player2 = a.*winner: player2"`]
fullymapWins=$[$fullymapWins1+$fullymapWins2]

moremap1Wins1=$[`cat runsh.txt | grep -c "moremap1.*player1 = a.*winner: player1"`]
moremap1Wins2=$[`cat runsh.txt | grep -c "moremap1.*player2 = a.*winner: player2"`]
moremap1Wins=$[$moremap1Wins1+$moremap1Wins2]

moremap2Wins1=$[`cat runsh.txt | grep -c "moremap2.*player1 = a.*winner: player1"`]
moremap2Wins2=$[`cat runsh.txt | grep -c "moremap2.*player2 = a.*winner: player2"`]
moremap2Wins=$[$moremap2Wins1+$moremap2Wins2]

moremap3Wins1=$[`cat runsh.txt | grep -c "moremap3.*player1 = a.*winner: player1"`]
moremap3Wins2=$[`cat runsh.txt | grep -c "moremap3.*player2 = a.*winner: player2"`]
moremap3Wins=$[$moremap3Wins1+$moremap3Wins2]

moremap4Wins1=$[`cat runsh.txt | grep -c "moremap4.*player1 = a.*winner: player1"`]
moremap4Wins2=$[`cat runsh.txt | grep -c "moremap4.*player2 = a.*winner: player2"`]
moremap4Wins=$[$moremap4Wins1+$moremap4Wins2]

moremap5Wins1=$[`cat runsh.txt | grep -c "moremap5.*player1 = a.*winner: player1"`]
moremap5Wins2=$[`cat runsh.txt | grep -c "moremap5.*player2 = a.*winner: player2"`]
moremap5Wins=$[$moremap5Wins1+$moremap5Wins2]

moremap6Wins1=$[`cat runsh.txt | grep -c "moremap6.*player1 = a.*winner: player1"`]
moremap6Wins2=$[`cat runsh.txt | grep -c "moremap6.*player2 = a.*winner: player2"`]
moremap6Wins=$[$moremap6Wins1+$moremap6Wins2]

moremap7Wins1=$[`cat runsh.txt | grep -c "moremap7.*player1 = a.*winner: player1"`]
moremap7Wins2=$[`cat runsh.txt | grep -c "moremap7.*player2 = a.*winner: player2"`]
moremap7Wins=$[$moremap7Wins1+$moremap7Wins2]


printf "p1 wins: $firstPlayerWins \n"
printf "p2 wins: $secondPlayerWins \n"
printf "largemapWins: $largemapWins ($largemapWins1+$largemapWins2)\n"
printf "separatedWins: $separatedWins ($separatedWins1+$separatedWins2)\n"
printf "smallmapWins: $smallmapWins ($smallmapWins1+$smallmapWins2)\n"
printf "fullymapWins: $fullymapWins ($fullymapWins1+$fullymapWins2)\n"
printf "moremap1Wins: $moremap1Wins ($moremap1Wins1+$moremap1Wins2)\n"
printf "moremap2Wins: $moremap2Wins ($moremap2Wins1+$moremap2Wins2)\n"
printf "moremap3Wins: $moremap3Wins ($moremap3Wins1+$moremap3Wins2)\n"
printf "moremap4Wins: $moremap4Wins ($moremap4Wins1+$moremap4Wins2)\n"
printf "moremap5Wins: $moremap5Wins ($moremap5Wins1+$moremap5Wins2)\n"
printf "moremap6Wins: $moremap6Wins ($moremap6Wins1+$moremap6Wins2)\n"
printf "moremap7Wins: $moremap7Wins ($moremap7Wins1+$moremap7Wins2)\n"






