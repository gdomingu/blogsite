puts "Welcome to the Leap Year Calculator from Chris Pine's Learn to Program!"
puts "Please enter a starting year"
starting_year = gets.chomp

puts "Please enter an ending year"
ending_year = gets.chomp
 
puts "The range of dates is from #{starting_year} to #{ending_year}."
puts "The following years are leap years:"
starting_year = starting_year.to_i
ending_year = ending_year.to_i

while (starting_year <= ending_year)
case  
	when starting_year % 4 == 0 && starting_year % 100 != 0 
			puts starting_year
	
	when starting_year % 400 == 0 
		puts starting_year
			
	end
	starting_year = starting_year + 1 
end
