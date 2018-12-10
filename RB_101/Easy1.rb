1. Repeat Yourself

def repeat(string, number)
  number.times do
    puts string
  end
end

2. Odd

def is_odd?(number)
  number % 2 == 1
end

3. List of Digits

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

4	How Many?

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

5	Reverse It (Part 1)	

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

6	Reverse It (Part 2)	

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

7	Stringy Strings

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

8	Array Average	

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end
9	Sum of Digits

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

10	What's my Bonus?

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end