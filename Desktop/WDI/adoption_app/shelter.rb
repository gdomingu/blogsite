class Shelter
	attr_accessor :pets, :sqft, :walks, :cages, :clients

	def initialize(sqft, walks, cages)
		@sqft = sqft
		@walks = walks
		@cages = cages
		@pets = {}
		@clients = {}
	end

	def to_s
		"the shelter is #{@sqft} square feet, takes the dogs on #{@walks} per day and have #{@cages} cages and has #{@clients.count} clients and #{@pets.count} pets."
	end
end
