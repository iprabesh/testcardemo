require_relative "question"

car1 = Car.new(10001, "Honda", "CR-V", "Red", 18000)

car2 = Car.new(10002,"Toyota", "CR-V", "Red", 18000)

car3 = Car.new(10003,"Kia", "CR-V", "Red", 18000)

car4 = Car.new(10004,"Honda", "CR-V", "Blue", 18000)

car_list = [car1, car2, car3, car4]

puts
puts car_list
puts "".center(55, '*')
puts "Which one would you like to remove: "
removeCar_id = gets.chomp.to_i
car_list.each do |car| 	
	if removeCar_id == car.car_id
		car1 = car
		puts "#{car1} is deleted"
		car_list.delete(car1)
		break
	else
		puts "#{removeCar_id} -- Not Found"
		break
	end
	end
puts
puts "New list of a car: \n"
puts car_list