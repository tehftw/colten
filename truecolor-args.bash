printf "FG       BG\n"
for a in $@
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
