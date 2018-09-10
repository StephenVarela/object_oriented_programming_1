class Cat

  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time > 12
      return "#{@meal_time - 12} PM"
    else
      return "#{@meal_time} AM"
    end
  end

  def meow
    puts "Hi my name is #{@name} I like to eat #{@preferred_food} at #{eats_at}"
  end


end


tom_cat = Cat.new('Tom', 'Jerry', 5)
garfield = Cat.new('garfield', 'Lasagnia', 15)

puts tom_cat.meow
puts garfield.meow
