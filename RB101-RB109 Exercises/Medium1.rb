1. Rotation (Part 1)

  def rotate_array(array)
    array[1..-1] + [array[0]]
  end

2. Rotation (Part 2)

  def rotate_rightmost_digits(number, n)
    all_digits = number.to_s.chars
    all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
    all_digits.join.to_i
  end

3. Rotation (Part 3)

def max_rotation(integer)
  counter = integer.to_s.length
  while counter > 0
    integer = rotate_rightmost_digits(integer, counter)
    counter -= 1
  end
  integer
end

4. 1000 Lights

def thousand_switches(integer)
  array = Array.new(integer, false)
  1.upto(integer) do |n|
    array.map!.with_index do |element, index| 
      if (index + 1) % n == 0
        !element
      else
        element
      end
    end
  end
  output = []
  array.each_with_index {|element, index| output << (index + 1)  if element == true }
  output
end

5. Diamonds!


def diamond(integer)
  spaces = (1..integer).step(2).to_a
  space_line = spaces.reverse
  spaces.shift
  space_line += spaces
  space_line.map! {|num| num / 2}

  stars = (1..integer).step(2).to_a
  star_line = stars.reverse
  star_line.shift
  star_line = stars + star_line

  counter = 0
  star_line.each do |element|
    line = ("*" * element)
    spaces = line.length + space_line[counter]
    full_line = line.rjust(spaces) + (" " * space_line[counter])
    puts full_line
    counter += 1
  end
end

6. Stack Machine Interpretation

def minilang(string)
  commands = string.split(" ")
  stack = []
  register = 0
  commands.map! do |element|
    if element.match?(/\d/)
      element.to_i
    else
      element
    end
  end
  commands.each do |element|
    if element.class == Integer
      register = element
    elsif element.class == String
      case element
      when "PUSH"
        stack << register
      when "ADD"
        register += stack.pop
      when "SUB"
        register -= stack.pop
      when "MULT"
        register *= stack.pop
      when "DIV"
        register /= stack.pop
      when "MOD"
        register %= stack.pop
      when "POP"
        register = stack.pop
      when "PRINT"
        p register
      end
    end
  end
end

7. Word to Digit

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

8. Fibonacci Numbers (Recursion)

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

9. Fibonacci Numbers (Procedural)

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

10. Fibonacci Numbers (Last Digit)

def fibonacci_last(n)
  last_2 = [1, 1]
  3.upto(n) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end
