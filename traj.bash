n=$1

for ((i=1;i<=n;i++))
do
	echo "iteration $i"
	cd "$i"
	for dir in */
	do
		cd "$dir"
		${2} -in in.lam
		cd ..
	done
	cd ..
done
