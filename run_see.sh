rm ./visual/*.*
bash run.sh ./maps/moremap1.txt 1 | python wl2dot.py ./visual 10000 >NULL
firefox ./visual/map_1.html
