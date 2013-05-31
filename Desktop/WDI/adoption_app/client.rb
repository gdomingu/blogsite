class Client
	attr_accessor :client_name, :gender, :kids, :pet, :returned 

		def initialize(client_name, gender, kids, pet, returned)
			@client_name = client_name
			@gender = gender
			@kids = kids
			@pet = pet
			@returned = returned
		end
	
		def to_s
			"Name: #{client_name} Gender: #{@gender} Pet for adoption: #{pet} Number of kids: #{@kids} Has returned? #{@returned}"
		end
	end


