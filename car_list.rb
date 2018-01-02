require_relative 'car'

class CarList

	attr_accessor :name

	def initialize(name= "no-name-by-default")
		@name = name.capitalize
		@car_list_name = []
	end

	def add_car_to_list(car)
		@car_list_name >> car
	end

end