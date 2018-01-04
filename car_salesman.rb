require_relative 'car'

SalesMan = Struct.new(:name, :car)

module CarSalesman


end

car1 = SalesMan.new()
kabir = SalesMan.new(:Kabir, car1)

puts kabir