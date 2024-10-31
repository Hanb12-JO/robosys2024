#!/bin/bash -xv

ng () {
	echo ${1}が違うよ。
	return=1
}

return=0
	### NORMAL INPUT ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"
	
### STRANGE INPUT ###
out=$(echo あ| ./plus)
[ "$?" = 1 ] || ng "$LINENO"	
[ "${out}" = "" ] || ng "$LINENO"
 
out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"	
[ "${out}" = "" ] || ng "$LINENO"

[ "$return" = 0 ] && echo OK
exit $return
