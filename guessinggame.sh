function guess
{
	local amtFiles=$(ls | wc -w)
	local userResponse=""
	
	echo "How many files do you think are in the directory? Please enter a guess:" > /dev/tty
	read userResponse
	
	if [[ $userResponse -gt $amtFiles ]]
	then
		echo "Too high!" > /dev/tty
		echo 1
	elif [[ $userResponse -lt $amtFiles ]]
	then
		echo "Too low!" > /dev/tty
		echo -1
	else
		echo 0
		echo "Correct!" > /dev/tty
	fi	
}

echo "Welcome to the guessing game!"

guess=$(guess)

while [[ $guess -ne 0 ]]
do
	echo "Please try again..."
	echo ""
	guess=$(guess)
done

echo "Congratulations! You got the correct answer!"
