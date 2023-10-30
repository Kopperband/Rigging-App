def LaM(length, height)
  LAM = length / height
  if LAM > 2
    puts "Warning your Load Angle Multiplier is #{LAM} which is less than 30 degrees"
  end
  else 
  Puts "your Load Angle Multiple is #{LAM}"
  end
end

def VolRect(length, width, height, )
  puts "Please choose your material:/n 1.Aluminum /n2.Brass n/3.Concrete /n4.Copper n/5.Diesel /n6.Oil,Motor /n7.Sand and Gravel /n8.Steel /n9.Water /n10.Wood
  material = gets.chomp.to_i

  case material
    when 1
      weight = 165
    when 2
      weight = 524
    when 3
      weight = 150
    when 4
      weight = 560
    when 5
      weight = 52
    when 6
      weight = 58
    when 7
      weight = 120
    when 8
      weight = 490
    when 9 
      weight = 63
    when 10
      weight = 50
    else
      puts "Error please enter a valid number"
      end
  volume = length * width * height * weight
 puts "Your calculated weight is #{volume}"
end

puts "Please enter a length, width and height of object in feet"
puts "length: "
length = gets.chomp.to_f
puts "width: "
width = gets.chomp.to_f
puts "height: "
height = gets.chomp.to_f

VolRect(length, width, height)

  
  
  
