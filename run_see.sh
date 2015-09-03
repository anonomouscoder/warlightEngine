cd ../visualizer
rm ./visual/*.*
bash run.sh ./maps/moremap7.txt 1 | python wl2dot.py ./visual 10000 >NULL
firefox ./visual/map_1.html
