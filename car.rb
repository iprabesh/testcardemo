class Car
	attr_accessor :car_id, :make, :model, :price, :color
	
	def initialize(car_id = "id-generated-100001",make ="No-Make-By-Default", model = "No-Name-By-Default",
					color = "No-Color-By-Default", price = 1)
		@car_id = car_id.to_i
		@make = make.capitalize
		@model = model.capitalize
		@price = price 
		@color = color.capitalize
	end

	def to_s
		 "#{@car_id}---#{@make} #{@model} - #{@color} have price tag of #{@price}"
	end		

	def gets_car_attributes
		puts "Put the unique car_id of a car: "
		@car_id = gets.chomp.to_i
		puts "Please enter Make of a car: "
		@make = gets.chomp
		puts "Please enter Model of a car: "
		@model = gets.chomp
		puts "Please enter color of a car: "
		@color = gets.chomp
		puts "Please enter price tag of a car: "
		@price = gets.chomp
	end

end

