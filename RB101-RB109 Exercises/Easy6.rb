1. Cute angle

  DEGREE = "\xC2\xB0"
  MINUTES_PER_DEGREE = 60
  SECONDS_PER_MINUTE = 60
  SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

  def dms(degrees_float)
    total_seconds = (degrees_float.abs * SECONDS_PER_DEGREE).round
    degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
    minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
    format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
  end

2. Delete vowels

  def remove_vowels(array)
  array.each {|string| string.delete!("aeiouAEIOU")}
end

3. Fibonacci Number Location By Length

def find_fibonacci_index_by_length(number_digits)
  fibonacci = 1
  next_fib = 1
  fib_set = [1, 1]
  while fibonacci.to_s.size < number_digits
    fibonacci, next_fib = (fibonacci + next_fib), fibonacci
    fib_set << fibonacci
  end
  fib_set.index(fibonacci) + 1
end

4. Reversed Arrays (Part 1)


  def reverse!(array)
    left_index = 0
    right_index = -1

    while left_index < array.size / 2
      array[left_index], array[right_index] = array[right_index], array[left_index]
      left_index += 1
      right_index -= 1
    end

    array
  end
5.  Reversed Arrays (Part 2)

    def reverse(array)
    result_array = []
    array.reverse_each { |element| result_array << element }
    result_array
    end


6. Combining Arrays
    def merge(array1, array2)
    array1 | array2
  end

7. Halvsies

  def halvsies(array)
    first_half = array.slice(0, (array.size / 2.0).ceil)
    second_half = array.slice(first_half.size, array.size - first_half.size)
    [first_half, second_half]
  end

8. Find the Duplicate


  def find_dup(array)
    array.find { |element| array.count(element) == 2 }
  end

9. Does My List Include This?

  def include?(array, test_value)
    !!array.find_index(test_value)
  end

10. Right Triangles

  def triangle(n)
    start = 1
    spaces = n - 1
    (n).times do
      puts " " * spaces + "*" * start
      spaces -= 1
      start += 1
    end
  end

