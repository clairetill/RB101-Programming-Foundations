1. ASCII String Value

  def ascii_value(string)
    sum = 0
    string.chars.each {|i| sum += i.ord }
    sum
  end

2. After Midnight (Part 1)


  MINUTES_PER_HOUR = 60
  HOURS_PER_DAY = 24
  MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY


  def time_of_day(delta_time)
    delta_time = delta_time % MINUTES_PER_DAY
    hours, minutes = delta_time.divmod(MINUTES_PER_HOUR)
    format("%02d:%02d", hours, minutes)
  end

3. After Midnight (Part 2)

    MINUTES_IN_DAY = 1440
  MINUTES_IN_HOUR = 60

  def after_midnight(time_str)
    hours, minutes = time_str.split(":").map(&:to_i)
    (hours * MINUTES_IN_HOUR + minutes) % MINUTES_IN_DAY
  end


  def before_midnight(time_str)
    minutes = MINUTES_IN_DAY - after_midnight(time_str)
    minutes % MINUTES_IN_DAY
  end

4. Letter Swap

  def swap(sentence)
   switched = sentence.split(' ').each do |word|
      word[0], word[-1] = word[-1], word[0]
   end
    switched.join(" ")
end


5. Clean up the words

def cleanup(string)
  string.gsub!(/[^a-zA-Z]/, ' ')
  while string.include?('  ')
    string.gsub!('  ', ' ')
  end
  string
end

6. Letter Counter (Part 1)

 def word_sizes(string)
    output = {}
    string.split.each do |word|
      if output[word.size] == nil
        output[word.size] = 1
      else
        output[word.size] += 1
      end
    end
    output
  end

7. Letter Counter (Part 2)

  def word_sizes(word_string)
    counts = Hash.new(0)
    word_string.split.each do |word|
      clean_word = word.delete('^a-zA-Z')
      counts[clean_word.size] += 1
    end
    counts 
  end

8. Alphabetical Numbers

NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)


  def alphabetic_number_sort(numbers)
    numbers.sort_by {|number| NUMBER_WORDS[number]}
  end

  p alphabetic_number_sort((0..19).to_a) 

9. ddaaiillyy ddoouubbllee

  def crunch(text)
    index = 0
    crunch_text = ''
    while index <= text.length - 1
      crunch_text << text[index] unless text[index] == text[index + 1]
      index += 1
    end
    crunch_text
  end

10. Bannerizer

  def print_in_box(message)
    horizontal_rule = "+#{'-' * (message.size + 2)}+"
    empty_line = "|#{' ' * (message.size + 2)}|"

    puts horizontal_rule
    puts empty_line
    puts "| #{message} |"
    puts empty_line
    puts horizontal_rule
  end

11. Spin Me Around In Circles


  The returned string will be a different object.
  This is because when .split is called on 'str' it is turned into an array and that is a different object.



