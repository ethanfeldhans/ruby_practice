# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.

# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.

# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# shirt1 = {"brand" => "Nike", "size" => "Medium", "color" => "red"}
# shirt2 = {"brand" => "Adidas", "size" => "Small", "color" => "green"}
# shirt3 = {"brand" => "Under Armour", "size" => "Large", "color" => "blue"}

# pp shirt1, shirt2, shirt3


class Shirt
  attr_reader :brand, :size, :color
  attr_writer :brand, :size, :color
  def initialize(input_brand, input_size, input_color)
    @brand = input_brand
    @size = input_size
    @color = input_color
  end

  def print_info
    p "#{@brand} #{@size} #{@color}"
  end

end

shirt1 = Shirt.new("Nike", "Medium", "Red")


shirt1.print_info
shirt1.brand = "Adidas"
shirt1.print_info


