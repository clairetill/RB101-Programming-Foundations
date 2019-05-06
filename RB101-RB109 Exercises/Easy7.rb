1. Combine Two Lists

  def interleave(array1, array2)
    array1.zip(array2).flatten
  end

2. Lettercase Counter

def letter_case_count(string)
  hash = {}
  hash[:lowercase] = string.chars.select {|element| element.match(/[a-z]/)}.size
  hash[:uppercase] = string.chars.select {|element| element.match(/[A-Z]/)}.size
  hash[:neither] = string.chars.select {|element| element.match(/[^a-z]/i)}.size
  hash
end

3. Capitalize Words

def word_cap(string)
  split_on_word = string.split
  split_on_word.each do |word| 
    cap_index = word.chars.find_index {|char| char.match(/[a-zA-Z]/)}
    word[cap_index] = word[cap_index].upcase!
  end.join(" ")
end

4. Swap Case

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
    characters.join
end

5. Staggered Caps (Part 1)

def staggered_case(string)
  stag_case = string.chars.each_with_index do |char, index|
                if index.even?
                  char.upcase!
                elsif index.odd?
                  char.downcase!
                end
              end.join
  stag_case
end

6. Staggered Caps (Part 2)


def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper && char =~ /[a-zA-Z]/
      result += char.upcase
      need_upper = !need_upper
    elsif !need_upper && char =~ /[a-zA-Z]/
      result += char.downcase
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

7. Multiplicative Average

def show_multiplicative_average(array)
  multiplied = array.reduce(:*)
  average = multiplied / array.size.to_f
  average.round(3)
  sprintf('%.3f', average )
end

8. Multiply Lists

def multiply_list(array1, array2)
  output = []
  counter = 0
  while counter < array1.size
    output << array1[counter] * array2[counter]
    counter += 1
  end
  output
end

9. Multiply All Pairs

def multiply_all_pairs(array_a, array_b)
  products = []
  array_a.each do |element_a|
    array_b.each do |element_b|
      products << element_a * element_b
    end
  end
  products.sort
end

10. The End Is Near But Not Here

def penultimate(string)
  words = string.split
  words[-2]
end
