1. How old is Teddy?

puts 'Please provide a name:'
name = gets.chomp

puts "#{name.empty? ? 'Teddy' : name} is #{rand(20..200)} years old!"

2. How big is the room?

SQMETERS_TO_SQFEET = 10.7639
 
puts 'Enter the length of the room in meters: '
length = gets.to_f

puts 'Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
      "square meters (#{square_feet} square feet)."

3. Tip calculator

puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip_percentage = (gets.to_f / 100)

tip_amount = (bill * tip_percentage)

total = (bill + tip_amount)

puts "The tip is $" + "%.2f" % tip_amount #{tip_amount}"
puts "The total is $" + "%.2f" % total #{total}"

4. When will I Retire?


puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retire_age = gets.to_i

current_year = Time.now.year
remaining_years = retire_age - age
retire_date = current_year + remaining_years


puts "It's #{current_year}. You will retire in #{retire_date}."
puts "You have only #{remaining_years} years of work to go!"

5. Greeting a user

print "What is your name? "
name = gets.chomp

if name.end_with?('!')
   puts "HELLO #{name.delete('!').upcase}. WHY ARE WE SCREAMING?"
 else
   puts "Hello #{name}."
 end

6. Odd Numbers

numbers = (1..99).to_a

numbers.each do |i|
   puts i if i.odd?
 end

 7. Even Numbers

 numbers = (1..99).to_a

 numbers.each do |i|
    puts i if i.even?
end

8. Sum or Product of Consecutive Integers

def compute_sum(number)
    total = 0
    1.upto(number) { |value| total += value }
    total
  end

  def compute_product(number)
    total = 1
    1.upto(number) { |value| total *= value }
    total
  end

  puts ">> Please enter an integer greater than 0"
  number = gets.chomp.to_i

  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp

  if operation == 's'
    sum = compute_sum(number)
    puts "The sum of the integers between 1 and #{number} is #{sum}."
  elsif operation == 'p'
    product = compute_product(number)
    puts "The product of the integers between 1 and #{number} is #{product}."
  else
    puts "Oops. Unknown operation."
  end

9. BOB
   BOB

This will print out 'BOB' twice because .upcase! modifies the caller.
  save_name is pointing toward the string 'Bob' which gets modifed by .upcase!

10. Mutation 

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo


