#!/bin/bash

# Task 1
task1(){

    # Read number of terms
    echo "Enter a number to find even multiples of: "
    read n

    # Read lower Limit of the range
    echo "Enter the lower limit of the range: "
    read lowerLimit

    # Read upper Limit of the range
    echo "Enter the upper limit of the range: "
    read upperLimit

    # declare and initailize variable to count number of terms
    count=0

    # to loop through the numbers in the range within upper and lower Limit
    # specified by the user
    echo "Following are the multiples of $n"
    for ((x = $lowerLimit; x < $upperLimit; x++));do
        # check if the number is divisible by n
        # and is an even number
        if [ $(($x % $n)) -eq 0 ] && [ $(($x % 2)) -eq 0 ]
       	then
           	# if it satisfies the conditions
        	# print the number
      		echo "$x"
           	# update count
        	count=$(($count+1))
       		# end if
       	fi
    # end for loop
    done

    echo "Count of multiples found: $count"
    echo
    echo
    echo "Press any key to continue"
    read

}


# Task 2
task2(){

    # Read value for a from the user
    echo "Enter value for a: "
    read a

    # Read value for b from the user
    echo "Enter value for b: "
    read b

    # Read the number of terms to be printed
    echo "Enter the no. of terms to be printed: "
    read x

    # Declare and initialize variables to 
    # store sum of all terms 
    # and count of Odd terms
    declare sum=0
    declare countOdd=0

    # loop to find n number of terms
    for ((n=1; n<$x; n++));do
        # calculate the value of terms for each iteration 
        term=$(($a*$n+$b))
        # print the term
        echo "$n th term is: $term"
        # update sum of all terms
        sum=$(($sum + $term))

        # to check if the number is odd
        if [ "$(($term%2))" == "1" ]
        then
            # if number is odd
            # update count of odd numbers
            countOdd=$(($countOdd + 1))
        fi
    done
    # to print sum of all terms 
    # and count of odd terms
    echo "The sum of $x terms is: $sum"
    echo "The number of odd terms in the given series is: $countOdd"
    echo
    echo
    echo "Press any key to continue"
    read
}

#task 3
task3(){

    # Read the number of terms to be printed
    echo "Enter the number of terms you want to print: "
    read n

    # declare and initailize the variables
    declare a=0
    declare b=1

    echo "Following are the numbers whose multiples are consecutive numbers and itself is a multiple of 5: "
    # to loop and find n terms of the sequence
    while [ "$(($count))" -lt "$(($n))" ]
    do
        # to calculate terms of the sequence
        num=$(($a * $b))

        # to check if the term is divisble by 5
        if [ "$(($num%5))" -eq "$((0))" ]
        then
            # if yes print the term
            echo "$num"
            # update term count
            count=$(($count + 1))
        fi

        # update a and b
        a=$(($a + 1))
        b=$(($b + 1))
    done

    echo
    echo
    echo "Press any key to continue"
    read
}

while :
do
    echo "Hello! Welcome to the script used to calculate some Advanced Mathematics Problems"
    echo "Following functions can be performed using this script:"
    echo "Task 1: To find even multiple of n"
    echo "Task 2: To find N terms of the sequence a*n + b, and find the sum of n terms of this series"
    echo "        and count of such odd numbers"
    echo "Task 3: To find numbers that are multiples of 5 which is a product of 2" 
    echo "        consecutive numbers in a given range along with sum of these numbers"
    echo
    echo
    echo "Which task would you like to perform?"
    echo "Enter -m/M for Task 1"
    echo "Enter -s/S for Task 2"
    echo "Enter -p/P for Task 3"
    echo "Enter -q/Q to Exit"
    read choice

    case $choice in
        "-m" ) task1;;
        "-M" ) task1;;
        "-S" ) task2;;
        "-s" ) task2;;
        "-p" ) task3;;
        "-P" ) task3;;
        "-q" ) exit;;
        "-Q" ) exit;;
    esac
done