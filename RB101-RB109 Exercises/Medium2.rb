1. Longest Sentence

def gutemberg_longest_sentence
  txt = File.open('01-gut.txt')
  text = txt.read
  array = text.split(/\?|\.|\!/).map do |string|
    string.split(' ')
  end.map { |sentence| sentence.length }.max
end

p gutemberg_longest_sentence

2. Now I Know My ABCs

  BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

  def block_word?(string)
    up_string = string.upcase
    BLOCKS.none? {|block| up_string.count(block) >= 2}
  end

3. Lettercase Percentage Ratio

def letter_percentages(string)
  percentages = {}
  length = string.length.to_f
  percentages[:lowercase] = (string.count('a-z') / length * 100).round(2)
  percentages[:uppercase] = (string.count('A-Z') / length * 100).round(2)
  percentages[:neither] = (string.count('^a-z', '^A-Z') / length * 100).round(2)
  percentages
end

4. Matching Parentheses?

def balanced?(string)
  count = 0
  string.each_char do |element|
    if element.match(/\(/)
      count += 1
    elsif element.match(/\)/)
      count -= 1
      return false if count < 0
    end
  end

  count == 0 ? true : false
end

5. Triangle Sides

  def triangle(num1, num2, num3)
    decending_sides = [num1, num2, num3].sort.reverse
    return :invalid if decending_sides[0] >= decending_sides[1] + decending_sides[2]
    return :equilateral if num1 == num2 && num2 == num3
    return :scalene if decending_sides.chunk_while {|i, j| i == j}.to_a.size == 3
    :isoceles
  end

6. Tri-Angles

def invalid_triangle(a, b, c)
  [a, b, c].inject(:+) != 180 || [a, b, c].any? { |angle| angle == 0 }
end

def triangle(a, b, c)
  arr = [a, b, c]
  if invalid_triangle(a, b, c)
    return :invalid
  else
    if arr.one? { |angle| angle == 90 }
      :right
    elsif arr.one? { |angle| angle > 90 }
      :obtuse
    elsif arr.all? { |angle| angle < 90 }
      :acute
    end
  end
end

7. Unlucky Days

def friday_13th(year)
  days = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
  days_in_month = {'January' => 31, 'February' => 28, 'March' => 31, 'April' => 30, 
            'May' => 31, 'June' => 30, 'July' => 31, 'August' => 31, 
            'September' => 30, 'October' => 31, 'November' => 30, 'December' => 31}
  years = (1753...year).to_a
  total_days = years.map do |year|
    if leap_year?(year)
      366
    else
      365
    end
  end
  day = total_days.reduce(:+) % 7

  jan_1st_of_year = day + 1

  days_in_month['February'] = 29 if leap_year?(year)
  first_of_month = [jan_1st_of_year]

  carry_over = jan_1st_of_year

  days_in_month.each do |month, days|
    next if month == 'December'
    first_of_month << (days + first_of_month[-1]) % 7
  end
  first_of_month.map! do |day|
    days[day]
  end
  number_of_friday_13ths = first_of_month.select do |day|
    day == 'Sunday'
  end
  number_of_friday_13ths.count
end



def leap_year?(year)
  return true if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  false
end

8. Next Featured Number Higher than a Given Value

def is_featured_num?(int)
  int.odd? &&
  int % 7 == 0 &&
  int.to_s.chars.all? { |digit| int.to_s.count(digit) == 1 }
end


def featured(int)
  result = int / 7
  until is_featured_num?(result*7) && result*7 > int
    result += 1
    return 'There is no possible number that fulfills those requirement' if (result*7).to_s.length > 10
  end

  result*7
end

9. Bubble Sort

def bubble_sort!(arr)
  bound = arr.size-1
  swap = false

  while !swap
    bound -= 1
    swap = true
    for i in 0..bound
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swap = false
      end
    end
  end

  arr
end

10. Sum Square - Square Sum

def sum_square_difference(int)
  square_of_sum = (0..int).inject(:+) ** 2
  sum_of_square = (0..int).to_a.map { |num| num ** 2 }.inject(:+)

  square_of_sum - sum_of_square
end