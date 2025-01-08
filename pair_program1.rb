# Create a program that asks the user for their favorite 5 foods. Then display those foods as an array, using the p keyword.


# puts "Please enter your 5 favorite foods"
# food = []
# x = 0
# while x < 5
#   temp = gets.chomp
#   food.push(temp)
#   x += 1
# end
# p food

# Now, instead of printing out the array, output 5 separate lines of each food, with the prefix, “I love”. 

puts "Please enter your 5 favorite foods"
food = []
x = 0
while x < 5
  temp = gets.chomp
  food.push(temp)
  x += 1
end

x = 0 
while x < 5
  puts "I love " + food[x]
  x += 1
end

# Finally, change your program so that when the list is printed in the terminal, each food is prefaced with a number, beginning with 1 and going up to 5, for example:

