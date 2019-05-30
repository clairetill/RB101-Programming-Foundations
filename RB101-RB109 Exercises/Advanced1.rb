1. Madlibs Revisited

ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS = %w(fox dog head leg cat tail).freeze
VERBS = %w(spins bites liks hurdles).freeze
ADVERBS = %w(easily lazily noisly excitedly).freeze

File.open('book_answer_story.txt') do |file|
  file.each do |line|
    puts format(line, noun: NOUNS.sample,
                      verb: VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb: ADVERBS.sample)
  end
end

2. Seeing Stars

  def print_row(grid_size, distance_from_center)
    number_of_spaces = distance_from_center - 1
    spaces = ' ' * number_of_spaces
    output = Array.new(3, '*').join(spaces)
    puts output.center(grid_size)
  end

  def star(grid_size)
    max_distance = (grid_size - 1) / 2
    max_distance.downto(1) {|distance| print_row(grid_size, distance)}
    puts '*' * grid_size
    1.upto(max_distance) {|distance| print_row(grid_size, distance)}
  end

3. Transpose 3x3

 def transpose(matrix)
    result = []
    (0..2).each do |column_index|
        new_row = (0..2).map {|row_index| matrix[row_indx][column_index]}
        result << new_row
    end
    result
  end

4. Transpose MxN

def transpose(matrix)
  output = []
  rows = matrix.size
  columns = matrix[0].size
  (0...columns).each do |column_index|
      current_row = (0...rows).map {|row_index| matrix[row_index][column_index]}
      output << current_row
  end
  output
end

5. Rotating Matrices

  def rotate90(matrix)
    output = []
    rows = matrix.size
    columns = matrix[0].size
    (0...columns).each do |column_index|
        current_row = (0...rows).map {|row_index| matrix[row_index][column_index]}
        output << current_row.reverse
    end
    output
  end

6. Fix the Bug

Problem with the elsif statement

def my_method(array)
  if array.empty?
    []
  elsif array.length > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

7. Merge Sorted Lists

def merge(arr1, arr2)
  list = []
  i = 0

  arr1.each do |element|
    while i < arr2.size && arr2[i] < element
      list << arr2[i]
      i += 1
    end
    list << element
  end

  list+arr2[i..-1]
end

8. def merge_sort(array)
  return array if array.length < 2

  mid = array.length / 2
  left_array = array[0...mid]
  right_array = array[mid..-1]

  left_array = merge_sort(left_array)
  right_array = merge_sort(right_array)
  merge(left_array, right_array)
end

9. Egyptian Fractions

def egyptian(input_fraction)
  output = []
  unit_denominator = 1
  current = Rational(1, unit_denominator)

  loop do 
    
    if input_fraction - current >= 0
      output << unit_denominator
      input_fraction = input_fraction - current
    end
      unit_denominator += 1
      current = Rational(1, unit_denominator)

    break if input_fraction == 0
  end
  output
end
