require 'rspec'
require_relative 'car_list'

describe CarList do 

	before do 
		@car_list_name = CarList.new("test_list")
		@car_list = []
	end

	it "has name of a list" do
		@car_list_name.name.should  == "Test_list" 
	end

end