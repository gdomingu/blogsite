require "pry"

require_relative "shelter"
require_relative "pet"
require_relative "client"

shelter = Shelter.new(5000, 2, 50)
shelter.pets = {
	"fido" => Pet.new("fido", "M", "Golden", "none", ["balls", "frogs"]),
	"spot" => Pet.new("spot", "F", "Pitbull", "none", ["newspapers", "shoes"]),
	"spike" => Pet.new("spike", "M", "Pug", "none", ["waterbowls", "laserpointers"]),
	"rover" => Pet.new("rover", "F", "Bulldog", "none", ["hats", "chewies"]),
}


print " (l)ist available pets, (a)dopt a pet, (r)eturn a pet, (q)uit"
response = gets.chomp.downcase

while response != "q"
 	if response == "l"
 		shelter.pets.each do |x|
 			puts x[1]
 		end
 		print " (l)ist available pets, (a)dopt a pet, (r)eturn a pet, (q)uit"
 		response = gets.chomp.downcase
 	elsif response == "a"
 		print "Congratulations! What's your name?"
 		client_name = gets.chomp
 		print "Is your gender M or F?"
 		gender = gets.chomp
 		print "How many kids do you have?"
 		kids = gets.chomp
 		print "Which pet would you like?"
 		pet = gets.chomp
 		shelter.pets.delete(pet)
 		shelter.clients[client_name] = Client.new(client_name, gender, kids, pet, "no")
 		print "Thanks, #{client_name}, congratulations on adopting #{pet}!"
 		puts " (l)ist available pets, (a)dopt a pet, (r)eturn a pet, (q)uit"
 		response = gets.chomp.downcase

 	elsif response == "r"
 		puts "Please fill out information on the pet you want to put up for adoption"
 		puts "Name:"
 		pet_name = gets.chomp
 		puts "Is your pet M or F?"
 		pet_gender = gets.chomp
 		puts "What is your pets type?"
 		pet_type = gets.chomp
 		puts "Please enter one of your pets favorite toys"
 		fav_toy1 = gets.chomp
 		puts "Please eneter another of your pets favorite toys"
 		fav_toy2 = gets.chomp
 		toys = ["#{fav_toy1}", "#{fav_toy2}"]
 			shelter.pets[pet_name] = Pet.new(pet_name, pet_gender, pet_type, "none", toys)

		puts " (l)ist available pets, (a)dopt a pet, (r)eturn a pet, (q)uit"
 		response = gets.chomp.downcase
 		

 	end
 
 end


		

# 	pets = [fido, spike, rover] 

# john = Client.new(...)
# fido = Pet.new(....)

# fido.owner = shelter.clients[]

