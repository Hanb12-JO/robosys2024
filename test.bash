#!/bin/bash

ng () {
	echo ${1}が違うよ。
	return=1
}

return=0

out=$(seq 5 | ./plus)
a=山田
[ "${out}" = 15 ] || ng "$LINENO"

[ "${return}" = 0 ] && echo OK

exit $return
