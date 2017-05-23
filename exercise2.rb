class Cat
  attr_accessor :name, :preferred_food, :meal_time

def initialize(name, preferred_food, meal_time)
  @name = name
  @preferred_food = preferred_food
  @meal_time = meal_time
end

def eats_at
  if meal_time == 8
    "#{meal_time} AM"
  elsif "11 AM"
  end
end

  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}."
  end





cat1 = Cat.new("Maya", "Tuna", 8)
cat2 = Cat.new("Silvester", "Salmon", 11)

puts cat1.meow
puts cat2.meow


end
