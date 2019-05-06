1. Sum of Sums

  def sum_of_sums(numbers)
    sum_total = 0
    1.upto(numbers.size) do |count|
      sum_total += numbers.slice(0, count).reduce(:+)
    end
    sum_total
  end

2. Madlibs


puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "I'll have you know, back when I was your age, I would #{verb} all the way to school \
and even if I was feeling #{adjective}, I would just scream out loud '#{adverb.capitalize}'! \
And that would get me all the way to #{noun}."

3. Leading Substrings

def substrings_at_start(string)
  substrings = []
  1.upto(string.length) do |index|
    substrings << string.slice(0, index)
  end
  substrings
end

4. All Substrings

  def substrings(string)
    results = []
    (0...string.size).each do |start_index|
      this_substring = string[start_index..-1]
      results.concat(substrings_at_start(this_substring))
    end
    results
  end

5. Palindromic Substrings

  def palindromes(string)
    all_substrings = substrings(string)
    output = []
    all_substrings.select do |substring|
      output << substring if substring == substring.reverse && substring.length > 1
    end
    output
  
6. fizzbuzz

  def fizzbuzz(starting_number, ending_number)
    result = []
    starting_number.upto(ending_number) do |number|
      result << fizzbuzz_value(number)
    end
    puts result.join(', ')
  end

  def fizzbuzz_value(number)
    case
    when number % 3 == 0 && number % 5 == 0
      'FizzBuzz'
    when number % 5 == 0
      'Buzz'
    when number % 3 == 0
      'Fizz'
    else
      number
    end
  end

7. Double Char (Part 1)

def repeater(string)
  doubled = ''
  string.each_char {|char| doubled << char * 2}
  doubled
end

8. Double Char (Part 2)

def double_consonants(string)
  result = ''
  string.each_char do |char| 
    if char.match(/([aeiou]|\d|\s|\W)/)
      result << char
    elsif
      result << (char * 2)
    end
  end
  result
end

9. Convert number to reversed array of digits

def reversed_number(integer)
  integer.to_s.reverse.to_i
end

10. Get The Middle Character

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index -1, 2]
  end
end