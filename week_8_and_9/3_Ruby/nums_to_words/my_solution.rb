# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
#Class 
#
#
#
#
#
#def in_words
#	l = []
#	num = []
#	puts "Insert number"
#	n = gets.chomp
#	n = n.to_s
#	n = n.split(//)
#	puts n
#	for x in n
#		l = l.push(x)
#	end
#
#	if l[0] == "2"
#		num[0] = "twenty"
#	elsif l[0] == "3"
#		num[0] = "thirty"
#	elsif l[0] == "4"
#		num[0] = "forty"
#	elsif l[0] == "5"
#		num[0] = "fifty"
#	elsif l[0] == "6"
#		num[0] = "sixty"
#	elsif l[0] == "7"
#		num[0] = "seventy"
#	elsif l[0] == "8"
#		num[0] = "eighty"
#	elsif l[0] == "9"
#		num[0] = "ninety"
#	else
#		num[0] = "one hundred"
#	end
#
#	if l[1] == "0"
#		pass
#	elsif l[1] == "1"
#		num[1] = "one"
#	elsif l[2] == "2"
#		num[1] = "two"
#	elsif l[1] == "3"
#		num[1] = "three"
#	elsif l[2] == "4"
#		num[1] = "four"
#	elsif l[1] == "5"
#		num[1] = "five"
#	elsif l[2] == "6"
#		num[1] = "six"
#	elsif l[1] == "7"
#		num[1] = "seven"
#	elsif l[2] == "8"
#		num[1] = "eight"
#	else
#		num[1] = "nine"
#	end
#
#	puts num
#end
#
#in_words

def in_words
	first_number = {"2": "twenty", "3": "thirty", "4": "forty", 
		"5": "fifty", "6": "sixty", "7", "seventy", "8": "eighty"
		"9": "ninety"}
	second_number = {"1": "one", "2": "two", "3": "three", "4": "four",
		"5": "five", "6": "six", "7": "seven", "8": "eight, "9": "nine"}
	num = []
	
	n = gets.chomp
	n = n.to_s
	n = n.split(//)
	puts n
	for x in n
		num = num.push(x)
	end

	if first_number.has_key(num[0])
		a = first_number.values_at(num[0])
	if second_number.has_key(num[1])
		b = second_number.values_at(num[1])

		puts a + b
	end
end




# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE






# 5. Reflection 