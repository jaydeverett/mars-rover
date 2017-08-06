class Rover

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
    currentposition
  end

  def currentposition
    puts "Your current position is #{@x}, #{@y}, #{@direction}. What would you like to do next?"
    instruction = gets.chomp
    read_instruction(instruction)
  end


  def read_instruction(instruction)
    if instruction == "L" || instruction == "R"
      turn(instruction)
    elsif
      instruction == "M"
      move(instruction)
    else
      puts "Sorry. That is not a valid input. Please enter 'L', 'R' or 'M'"
      currentposition
    end
  end

  def turn(instruction)
    if instruction == "L"
      if
        @direction == "N"
        @direction = "W"
      elsif
        @direction == "E"
        @direction = "N"
      elsif
        @direction == "S"
        @direction = "E"
      elsif
        @direction == "W"
        @direction = "S"
      end
    elsif instruction == "R"
      if
        @direction == "N"
        @direction = "E"
      elsif
        @direction == "E"
        @direction = "S"
      elsif
        @direction == "S"
        @direction = "W"
      elsif
        @direction == "W"
        @direction = "N"
      end
    else
      puts "Sorry. That is not a valid direction."
      currentposition
    end
    currentposition
  end

  def move(instruction)
    if instruction == "M"
      if
        @direction =="N"
        @y += 1
      elsif
        @direction =="S"
        @y -= 1
      elsif
        @direction =="E"
        @x += 1
      elsif
        @direction =="W"
        @x -= 1
      end
      currentposition
    end
  end


end

curiosity = Rover.new(3, 3, "E")
