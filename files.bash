# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.
# 
# 
cat number.txt | while read num
do

        if [ `echo "${num} % 2" | bc` -eq 0 ] 
        then  
                echo ${num} >> even.numbers.txt
        else
                echo ${num} >> odd.numbers.txt
        fi
done