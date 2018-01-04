require_relative 'car'
require_relative 'car_list'

module Questions 

	def self.intro_question
		puts "What would you like to do, please select one: "
		puts "1. View all the car listing."
		puts "2. Add a car."
		puts "3. Remove a car"
		puts "4. To quit this program"
	end

	def self.question
		intro_question
		car_list = []
		while(answer = gets.chomp.to_i) do
			case answer
				when 1
					puts "Here is a list of a car".center(45,'*')
					if car_list.empty?
						puts "Sorry There are no car in the inventory right now. "
					else
						puts car_list
					end

					puts "".center(45, "*")
					intro_question
				when 2 
					puts "Add a car: \n"
					puts "How many cars would you like to add: "
					car_num = gets.chomp.to_i
					while (car_num!=0) do 
						car = Car.new
						car.gets_car_attributes
						car_list.push(car)
						puts puts
						car_num=car_num-1	
					end
					intro_question
				when 3 
					puts "Remove a car: \n"
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
					intro_question
				when 4
					puts "Thank you for using this program".center(45, '*')
					break; 
				else 
				puts "Please put in valid input: \n".center(35,'*')
			end 
		end
	end

end
