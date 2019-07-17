#krgbybmcw
template_3bit="p0p0p0
p0s0s0
s0p0s0
p0p0s0
s0s0p0
p0s0p0
s0p0p0
s0s0s0
"


printf "$template_3bit"\
	| sed -e "s/p/${1}/g;s/s/${2}/g"\
	| bash truecolor-colterm.bash
