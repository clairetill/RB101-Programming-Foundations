1. Searching 101

numbers = []

puts "Enter the 1st number:"
numbers << gets.chomp.to_i
puts "Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "Enter the 4th number:"
numbers << gets.chomp.to_i
puts "Enter the 5th number:"
numbers << gets.chomp.to_i
puts "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include? last_number
    puts "The number #{last_number} appears in #{numbers}."
  else
    puts "The number #{last_number} does not appear in #{numbers}."
  end

2. Arithmetic Integer

  def prompt(message)
    puts "#{message}"
  end

  prompt("Enter the first number:")
  first_number = gets.chomp.to_i
  prompt("Enter the second number:")
  second_number = gets.chomp.to_i

  prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
  prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
  prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
  prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
  prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
  prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")

3. Counting the Number of Characters

 print 'Please write word or multiple words: '
  input = gets.chomp
  number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."

4. Multiplying Two Numbers

  def multiply(n1, n2)
    n1 * n2
  end

5. Squaring an Argument

def square(n)
    multiply(n, n)
  end

6. Exclusive Or

   def xor?(value1, value2)
    (value1 && !value2) || (value2 && !value1)
  end

7. Odd Lists

  def oddities(array)
    new_array = []
    index = 0
    while index < array.size
      new_array << array[index]
      index += 2
    end
    new_array
  end

  8. Palindromic Strings (Part 1)

  def palindrome(array)
  array == array.reverse
end

9. Palindromic Strings (Part 2)

  def real_palindrome?(string)
    string_mod = string.downcase.delete('^a-z0-9')
    string_mod == string_mod.reverse
  end

  10. Palindromic Numbers  

  def palindromic_number?(number)
    palindrome?(number.to_s)
  end
