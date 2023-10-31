
# This is the Math for figuring out Load Angle Multiplier.
# ***You should try and find the math to convert it to the angle as well***
def LoadAngleMeasurement()
  puts "Please enter a length of your sling from the bottom of the lower eye to the top of the upper eye in feet: "
  length = gets.chomp.to_f
  puts "Please enter the height from the top of your object being lift to the bottom of the inside of your hook in feet: "
  height = gets.chomp.to_f
  Float loadAngleMeasurement = length.to_f/height.to_f
    if loadAngleMeasurement < 1.999
      puts "Your Load Angle Multiple is #{loadAngleMeasurement.round(3)}"
    else
      puts "Warning your Load Angle Multiplier is #{loadAngleMeasurement.round(3)} which is less than 30 degrees"
    end
end
#Volume of a Rectangle
def VolRect()
  puts "Please enter a length, width and height of object in feet"
  puts "length: "
  length = gets.chomp.to_f
  puts "width: "
  width = gets.chomp.to_f
  puts "height: "
  height = gets.chomp.to_f
    puts "Please choose your material:\n1.Aluminum \n2.Brass n\3.Concrete \n4.Copper n\5.Diesel \n6.Oil,Motor \n7.Sand and Gravel \n8.Steel \n9.Water \n10.Wood"
    material = gets.chomp.to_i

    #Weights (all in lbs a cubic foot)
    case material
      when 1 # Aluminum
        weight = 165
      when 2 # Brass
        weight = 524
      when 3 # Concrete
        weight = 150
      when 4 # Copper
        weight = 560
      when 5 # Diesel
        weight = 52
      when 6 # Oil, Motor
        weight = 58
      when 7 # Sand and Gravel
        weight = 120
      when 8 # Steel
        weight = 490
      when 9 # Water
        weight = 63
      when 10 # Wood
        weight = 50
      else
        puts "Error please enter a valid number"
    end
    # Calculates total asquare footage and then multiplies it by the weight of chosen material
    volume = length * width * height * weight
    puts "Your calculated weight is #{volume}"
end

# Welcome Page
def Welcome()
  puts "\nGreetings, how may I assist your rigging needs today?\n\nPlease enter the number of the math you wish to complete or 0 to quit: "
  choice = gets.chomp.to_i
  #need to figure out how to stop the program from running and not just looping through
  case choice
  when 0
    exit(true)
  when 1
    VolRect()
  when 2
    LoadAngleMeasurement()
  end

end

# Everything below here is for testing


Welcome()
