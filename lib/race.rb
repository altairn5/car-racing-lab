require_relative 'car'


class Race
	attr_accessor :cars 
	def initialize
		@cars = [Car.new, Car.new]

		@speed1 = @cars[0].accelerate(rand(1..100))
		@speed2 = @cars[1].accelerate(rand(1..100))

	end
	def winner

		
		if @speed1 < @speed2 
		@winner = @cars[1] 	
		else	
		@winner = @cars[0]
		end
	end
	def loser
		if @speed1 < @speed2 
		@loser = @cars[0] 	
		else	
		@loser = @cars[1]
		end
	end
end
