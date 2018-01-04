require_relative 'car'
require_relative 'question'

=begin
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
=end

module CarList

	def self.initialize
		@car_list = []
	end

	def self.add_car_to_list(car)
		@car_list >> car
	end

	def random
		@car_list.sample
	end

end


if __FILE__ == $0

	

end