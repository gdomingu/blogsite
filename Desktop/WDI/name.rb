def name_tag
	puts "what is your first name?"
	first = gets.chomp
	puts "what is your last name?"
	last = gets.chomp
	puts "how old are you?"
	age = gets.chomp
	puts "M or F?"
	gender = gets.chomp

		if gender == "M"
			puts "Mr. #{first} #{last}, age:#{age}"
		elsif gender == "F" && age.to_i <= 19 
			puts "Ms. #{first} #{last}, age:#{age}"
		elsif gender == "F" && age.to_i >= 19
			puts "Mrs. #{first} #{last}, age:#{age}"
		elsif gender != "F" || gender != "M"
			puts "Please enter either 'F' or 'M' "
		end

end
name_tag