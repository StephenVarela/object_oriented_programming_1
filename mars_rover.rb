class Rover

  def initialize (name)
    @name = name
    @coordinates = {:x_coordinate => 0, :y_coordinate => 0}
    @orientation_number = 0;
  end

  def orientation
    return @orientation
  end

  def coordinates
    return @coordinates
  end

  def set_location_and_direction
    puts "enter x and y cordinates as integers followed by a letter for orientation"

    location_direction = gets.chomp.split(' ')

    parse_index = 0
    location_direction.each do |command|
      if parse_index == 0 #parse x coordinate
        @coordinates[:x_coordinate] = command
      elsif parse_index == 1 #parse y coordinate
        @coordinates[:y_coordinate] = command
      elsif parse_index == 2 #parse orienation north south east west
        if command == "N"
          @orientation_number = 0
        elsif command == "E"
          @orientation_number = 1
        elsif command == "S"
          @orientation_number = 2
        elsif command == "W"
          @orientation_number = 3
        else
          "Error Parsing input arguments"
        end
      else
        puts "Error parsing input arguments"
      end
      parse_index += 1;
    end

  end

  def read_instruction
    puts "Enter instructions"
    instructions = gets.chomp.split('')

    instructions.each do |instruction|
      if instruction == "L"
        turn(instruction)
      elsif instruction == "R"
        turn(instruction)
      elsif instruction == "M"
        move
      end
    end

  end


  def turn (direction)
    if(direction == "R")
      @orientation_number = (@orientation_number+1)%4
    elsif(direction == "L")
      if(@orientation_number - 1 < 0)
        @orientation_number = 4
        @orientation_number = (@orientation_number-1)%4
      else
        @orientation_number = (@orientation_number-1)%4
      end
    else
      puts "Error Invalid Direction"
    end
  end
  # def turn(direction)
  #
  #   puts('----------------')
  #   puts(@orientation.inspect)
  #
  #   location_index = 0;
  #
  #
  #   @orientation.each do |value|
  #     if value
  #       break
  #     end
  #     location_index += 1
  #   end
  #
  #   if (direction == 'L')
  #     @orientation[location_index] = false #switch off current direction and set new direction
  #     if location_index == 0
  #       @orientation[3] = true
  #     else
  #       @orientation[location_index - 1] = true
  #     end
  #   elsif (direction == 'R')
  #     @orientation[location_index] = false #switch off current direction and set new direction
  #     if location_index == 3
  #       @orientation[0] = true
  #     else
  #       @orientation[location_index + 1] = true
  #     end
  #   else
  #     puts "invalid direction!"
  #   end
  #
  #   puts(@orientation.inspect)
  #   puts('----------------')
  # end

  def move
    if(@orientation_number == 0)
      @coordinates[:y_coordinate] += 1
    elsif(@orientation_number == 1)
      @coordinates[:x_coordinate] += 1
    elsif(@orientation_number == 2)
      @coordinates[:y_coordinate] -= 1
    elsif(@orientation_number == 3)
      @coordinates[:x_coordinate] -= 1
    else
      puts "Error! no orientation information"
    end
    puts "#{@coordinates}"
  end

end


mars_rover = Rover.new('mars_rover_1')
#mars_rover.set_location_and_direction
# mars_rover.turn('L')
# mars_rover.turn('L')
# mars_rover.turn('L')
# mars_rover.turn('L')
# mars_rover.turn('L')
# mars_rover.turn('R')
# mars_rover.turn('R')
# mars_rover.turn('R')
# mars_rover.turn('R')
# mars_rover.turn('R')

mars_rover.read_instruction
