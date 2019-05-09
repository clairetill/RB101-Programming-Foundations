1. Countdown

def decrease(counter)
  counter - 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

To work properly we need to take the return value of the method and assign it to the variable counter. Also, reassigning the method parameter is not needed. 

2. HEY YOU!

def shout_out_to(name)
  puts 'HEY ' + name.upcase
end

3. Valid Series?

In Ruby, everything is truthy except false and nil. Line 5 will always return true because odd_count = 3 is truthy. We need to replace the = with Integer#==

4. Reverse Sentence

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = words.length-1
  while i > -1
    reversed_words << words[i]
    i -= 1
  end

  reversed_words.join(' ')
end

5. Card Deck

 Call #.dup on the hash values.

6. Getting Things Done

We need to add a base case. n being the number of element to 'shift' we can simply say that when n == 0 return the to_array. Otherwise Shift one element and repeat the operation with with n-1 

7. Neutralizer

def neutralize(sentence)
  words = sentence.split(' ').each do |word|
    if negative?(word)
      word = ''
    else
      word
    end
  end

  words.join(' ').squeeze
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

8. Password

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password(pass)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == pass
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)

9. Number Guessing Game

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
  end
end

guess_number(10, 3)

10. TF-IDF