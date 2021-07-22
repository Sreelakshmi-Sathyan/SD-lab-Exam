# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.
# 
# 
a=(12 25 39 48 64)
echo ${a[@]}     
b=(4 21 10)
echo ${b[@]}
c=("${a[@]}" "${b[@]}")
echo ${c[@]}
n=${#c[@]}
echo $n
for ((i=0; i<$n; i++))
do
    for((j=i+1; j<$n; j++))
    do
        if [ ${c[i]} -le ${c[j]} ]
        then
            continue
        else
            sort=${c[i]}
            c[i]=${c[j]}
            c[j]=$sort
        fi
    done
done
echo "Sorted array "${c[@]}
if (( $n % 2 == 1 )); then   
    val="${c[ $(($n+1/2)) ]}"
  else                          
    (( j=n/2 ))
    (( k=j+1 ))
    (( val=(${c[j]} + ${c[k]})/2 ))
  fi
  echo "Median "$val