# Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.
#
class Vehicle
  def initialize
    @lights_on = false
  end
  def lightstatus
    if @lights_on == false
      puts "lights are off"
    else
      puts "lights are on"
    end
  end
  def lightswitch
    @lights_on = !@lights_on
  end
end

my_vehicle = Vehicle.new
# p my_vehicle.lightswitch
# # p my_vehicle.lightswitch
# p my_vehicle.lightstatus
# my_vehicle.lightstatus


# Story: As a programmer, I can make a car.
# Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.

# class Car
#
# end
#
# my_car = Car.new

# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

class Car < Vehicle
  def initialize x
    @wheelNumber = 4
    @modelYear = x
    @blinker = "off"
    @speed = 0
  end
  def showWheels
    @wheelNumber
  end
  def showModelYear
    @modelYear
  end
  # def signal
  #   puts "What direction would you like to turn?"
  #   direction = gets.chomp
  #   if direction == "left"
  #     @blinker = "left"
  #   elsif direction == "right"
  #     @blinker = "right"
  #   elsif direction == "off"
  #     @blinker = "off"
  #   else
  #     "not a valid direction"
  #   end
  #   # p @blinker
  # end
end

my_car = Car.new(2017)
# my_car.showWheels
# p "my car's model year is " + my_car.showModelYear.to_s
# p my_car.signal

# Story: As a programmer, I can make a Tesla car.
# Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.

class Tesla < Car
  def accelerate
    @speed = @speed + 10
    p @speed
  end
  def brake
    if @speed <= 7
      @speed = 0
    else
      @speed = @speed - 7
    end
    p @speed
  end
end

my_tesla = Tesla.new(2016)
# my_tesla.accelerate
# my_tesla.accelerate
# my_tesla.brake
# my_tesla.brake
# my_tesla.brake
# my_tesla.brake
# p my_tesla
# p my_tesla.class
# p my_tesla.class.superclass
# p my_tesla.class.superclass.superclass.to_s
my_other_tesla = Tesla.new(2018)

# Story: As a programmer, I can make a Tata car.

class Tata < Car
end
my_tata = Tata.new(1980)
my_other_tata = Tata.new(1978)
# p my_tata.showModelYear



# Story: As a programmer, I can make a Toyota car.

class Toyota < Car
end
my_toyota = Toyota.new(2006)
my_other_toyota = Toyota.new(2008)
# p my_toyota.showModelYear

# cars = [my_toyota.showModelYear, my_other_toyota.showModelYear, my_tata.showModelYear, my_other_tata.showModelYear, my_tesla.showModelYear, my_other_tesla.showModelYear]
# p cars.sort

cars = [my_toyota, my_other_toyota, my_tata, my_other_tata, my_tesla, my_other_tesla]
cars_yr = cars.sort_by {|cars| cars.showModelYear}

cars_yr.each do |el|
  puts el.showModelYear.to_s + " " + el.class.to_s
end

p cars_make = cars.sort_by{|cars| cars.class.to_s}




# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Hint: Make model year part of the initialization.

# class Car < Vehicle
#   def initialize x
#     @wheelNumber = 4
#     @modelYear = x
#   end
#   def showWheels
#     p @wheelNumber
#   end
# end
#
# my_car = Car.new(2017)
# my_car.showWheels



# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?

  #See Above

# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.

  #See above

# Tests:
# vehicle = Vehicle.new(...)
# vehicle.lights_on? # should return false
# vehicle.lights_on = true
# vehicle.lights_on? # should return true
# vehicle.lights_on = false
# vehicle.lights_on? # should return false
# Story: As a programmer, I can signal left and right. Turn signals starts off.
#
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
#
# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
#
# Story: As a programmer, I can slow my Teslas down by 7 per braking.
#
# Story: As a programmer, I can speed my Tatas up by 2 per acceleration.
#
# Story: As a programmer, I can slow my Tatas down by 1.25 per braking.
#
# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
#
# Story: As a programmer, I can slow my Toyotas down by 5 per braking.
#
# Story: As a programmer, I can call upon a car to tell me all it's information.
# Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
#
# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
# Hint: Create two of each vehicles, all from different model years, and put them into an Array.
#
# Story: As a programmer, I can sort my collection of cars based on model year.
#
# Story: As a programmer, I can sort my collection of cars based on model.
# Hint: Sort based on class name.
#
# Story: As a programmer, I can sort my collection of cars based on model and then year.
# Hint: Find out how the spaceship operator can help you with an array.
