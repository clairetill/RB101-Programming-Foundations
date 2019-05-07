1. Welcome Stranger

   def greetings(array, hash)
   puts "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]}  {hash[:occupation]} around."
  end

2. Double Doubles

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center -1]
  right_side = string_numner[center..-1]
  return number if left_side == right_side
  return number * 2
end

3. Always Return Negative

 def negative(number)
    number > 0 ? -number : number
  end

4. Counting Up

def sequence(integer)
  (1..integer).to_a
end

5. Uppercase Check

def uppercase?(string)
  string == string.upcase
end

6. How long are you?

def word_lengths(string)
  string.split.map {|word| word + " " + word.size.to_s}
end

7. Name Swapping

  def swap_name(name)
    name.split.reverse.join(', ')
  end

8. Sequence Count


  def sequence(count, first)
    (1..count).map {|idx| idx * first }
  end

9. Grade book

  def get_grade(s1, s2, s3)
    result = (s1 + s2 + s3) / 3
    case result
    when 90..100 then 'A'
    when 80..99 then 'B'
    when 70..79 then 'C'
    when 60..69 then 'D'
    when 0..59 then 'F'
    end
  end

10. Grocery List

def buy_fruit(list)
  list.map { |fruit, quantity, second_quantity| [fruit] * quantity * second_quantity }.flatten
end

