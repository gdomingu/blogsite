class Pet
		attr_accessor :type, :gender, :toys, :name, :owner

		def initialize (name, gender, type, owner, toys)
			@name = name
			@gender = gender
			@type = type
			@owner = owner
			@toys = toys
		end

		def to_s
			"#{@name} is a #{@gender} #{@type} that likes #{@toys[0]} and #{@toys[1]} and will be adopted by #{@owner}"
		end
	end
