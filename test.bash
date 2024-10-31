#!/bin/bash -xv

ng () {
	echo ${1}が違うよ。
	return=1
}

return=0

out=$(seq 5 | ./plus)
++ seq 5
++ ./plus
+ out=15

[ "${out}" = 15 ] || ng "$LINENO"
+ '['15 = 15']'

[ "${return}" = 0 ] && echo OK
+ '['0 = 0']'
+echo OK
OK
exit $return
;exit 0
