#!/bin/bash

# how 

text_fg='-text-'
text_bg='-bg-'
text_ital='-ital-'
text_bold='-bold-'
text_boit='-boit-'
text_unde='-unde-'
text_fain='-fain-'

colorname_full=(
"Black  "
"Red    "
"Green  "
"Yellow "
"Blue   "
"Magenta"
"Cyan   "
"White  "
)
colorname=(
"B"
"R"
"G"
"Y"
"B"
"M"
"C"
"W"
)
bright_code=(
'8'
'9'
'a'
'b'
'c'
'd'
'e'
'f'
)



printf "nr NAME\n"
for i in {0..7}
do
	colname=${colorname[$i]}
	#printf "%2d" $((8+i))
	printf "$i $i $colname  \033[4$i"
	printf "m$text_bg\033[0m"
	printf " \033[3$i"
	printf "m$text_fg\033[0m"
	printf " \033[1;3$i"
	printf "m$text_bold\033[0m"
	printf " \033[3;3$i"
	printf "m$text_ital\033[0m"
	printf " \033[1;3;3$i"
	printf "m$text_boit\033[0m"
	printf " \033[4;3$i"
	printf "m$text_unde\033[0m"
	printf " \033[2;3$i"
	printf "m$text_fain\033[0m"
	printf "\n"
done


for i in {0..7}
do
	colname="b${colorname[$i]}"
	#printf "%2d" $((8+i))
	printf "${bright_code[i]} $i"
	printf " $colname \033[10$i"
	printf "m$text_bg\033[0m"
	printf " \033[9$i"
	printf "m$text_fg\033[0m"
	printf " \033[1;9$i"
	printf "m$text_bold\033[0m"
	printf " \033[3;9$i"
	printf "m$text_ital\033[0m"
	printf " \033[1;3;9$i"
	printf "m$text_boit\033[0m"
	printf " \033[4;9$i"
	printf "m$text_unde\033[0m"
	printf " \033[2;9$i"
	printf "m$text_fain\033[0m"
	printf "\n"
done


# echo -e " NAME        FG  BG"
# echo -e " # normal:"
# printf " 0 Black     30  41  \033[40m  bg  \033[0m \033[30m=foreground-text=\x1b[0m"
# printf " 1 Red       31  41  \033[41m  bg  \033[0m \033[31m=foreground-text=\x1b[0m"
# printf " 2 Green     32  42  \033[42m  bg  \033[0m \033[32m=foreground-text=\x1b[0m"
# printf " 3 Yellow    33  43  \033[43m  bg  \033[0m \033[33m=foreground-text=\x1b[0m"
# printf " 4 Blue      34  44  \033[44m  bg  \033[0m \033[34m=foreground-text=\x1b[0m"
# printf " 5 Magenta   35  45  \033[45m  bg  \033[0m \033[35m=foreground-text=\x1b[0m"
# printf " 6 Cyan      36  46  \033[46m  bg  \033[0m \033[36m=foreground-text=\x1b[0m"
# printf " 7 White     37  47  \033[47m  bg  \033[0m \033[37m=foreground-text=\x1b[0m"
# printf " 8 BrBlack   90  100 \033[100m  bg  \033[0m \033[90m=foreground-text=\x1b[0m"
# printf " 9 BrRed     91  101 \033[101m  bg  \033[0m \033[91m=foreground-text=\x1b[0m"
# printf "10 BrGreen   92  102 \033[102m  bg  \033[0m \033[92m=foreground-text=\x1b[0m"
# printf "11 BrYellow  93  103 \033[103m  bg  \033[0m \033[93m=foreground-text=\x1b[0m"
# printf "12 BrBlue    94  104 \033[104m  bg  \033[0m \033[94m=foreground-text=\x1b[0m"
# printf "13 BrMagenta 95  105 \033[105m  bg  \033[0m \033[95m=foreground-text=\x1b[0m"
# printf "14 BrCyan    96  106 \033[106m  bg  \033[0m \033[96m=foreground-text=\x1b[0m"
# printf "15 BrWhite   97  107 \033[107m  bg  \033[0m \033[97m=foreground-text=\x1b[0m"
