printf "FG       BG\n"
#for a in $@
while read a
do
	# $("ibase=16; " | bc)
	cr="${a:0:2}"
	cg="${a:2:2}"
	cb="${a:4:2}"
	cr_10=$(printf "%d" "0x$cr")
	cg_10=$(printf "%d" "0x$cg")
	cb_10=$(printf "%d" "0x$cb")
	printf "\033[38;2;$cr_10;$cg_10;$cb_10\x6d$a\033[0m"
	printf "\033[48;2;$cr_10;$cg_10;$cb_10\x6d$a\033[0m\n"
done




# echo -e "\033[38;2;0;100;100m  color 1 \033[0m"
# echo -e "\033[38;2;100;100;100m  color 2 \033[0m"
# echo -e "\033[38;2;100;100;100m  color 3 \033[0m"
# echo -e "\033[38;2;100;100;100m  color 4 \033[0m"
# echo -e "\033[38;2;100;100;100m  color 5 \033[0m"
# echo -e "\033[38;2;100;100;100m  color 6 \033[0m"
# echo -e "\033[38;2;100;100;100m  color 7 \033[0m"
# echo -e "\033[38;2;100;100;100m  color 8 \033[0m"


#  a8a8a8       0x7: white    #e5e5e5
#  1010c0       0x4: blue     #0000ee
#  c010c0       0x5: magenta  #cd00cd
#  10c0c0       0x6: cyan     #00ffff
#  c01010       0x1: red      #cd0000
#  10c010       0x2: green    #00cd00
#  c0c010       0x3: yellow   #cdcd00
#  080808       0x0: black    #000000
