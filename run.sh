printf $1 >>runsh.txt
printf ", " >>runsh.txt
printf $2 >>runsh.txt
printf ", " >>runsh.txt
if [ "$2" == "0" ]; then
	printf "\tplayer1 = b, player2 = a" >>runsh.txt
	java -cp lib/java-json.jar:bin com.theaigames.game.warlight2.Warlight2 $1 ./b.out ./a.out
else
	printf "\tplayer1 = a, player2 = b" >>runsh.txt
	java -cp lib/java-json.jar:bin com.theaigames.game.warlight2.Warlight2 $1 ./a.out ./b.out
fi

