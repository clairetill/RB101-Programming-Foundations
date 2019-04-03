1. Short Long Short

def short_long_short(string1, string2)
    if string1.length > string2.length
      string2 + string1 + string2
    else
      string1 + string2 + string1
    end
  end

2. What Century is That?

 def century(year)
    century = year / 100 + 1
    century -= 1 if year % 100 == 0
    century.to_s + century_suffix(century)
  end

  def century_suffix(century)
    return 'th' if [11, 12, 13].include?(century % 100)
    last_digit = century % 10

    case last_digit
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
    end
  end

3. Leap Years (Part 1)


def leap_year?(year)
  if year % 4 == 0
    return true unless year % 100 == 0
    if year % 100 == 0
      return false unless year % 400 == 0
      if year % 400 == 0
        return true
      end
    end
  else
    false
  end
end

4. Leap Years (Part 2)


def leap_year?(year)

  if year >= 1752
    year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  elsif year < 1752
    year % 4 == 0
  end
end

5. Multiples of 3 and 5

def multisum(num)
  array = (1..num).select {|i| i % 3 == 0 || i % 5 == 0}
  array.reduce(:+)
end

6. Running Totals

 def running_total(num)
   sum = 0
   num.map {|value| sum += value}
 end

7. Convert a String to a Number!

DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
          'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
          'F' => 15
          }

  def string_to_integer(string)
    integers = string.chars.map {|i| DIGITS[i]}

    value = 0
    integers.each {|i| value = value * 10  + i}
    value
  end

8. Convert a String to a Signed Number!

def string_to_signed_integer(string)
    case string[0]
    when '-' then -string_to_integer(string[1..-1])
    when '+' then string_to_integer(string[1..-1])
    else string_to_integer(string)
    end
  end

9. Convert a Number to a String!

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
    array = []
  array << integer.digits.reverse.map {|i| DIGITS[i] }
  array.join
end

10. Convert a Signed Number to a String!

def signed_integer_to_string(number)
  if number > 0 
    '+' + integer_to_string(number)
  elsif number < 0 
    '-' + integer_to_string(number.abs)
  else
   '0'
  end
end
