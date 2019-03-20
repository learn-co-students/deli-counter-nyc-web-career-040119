def line(katz_deli)
  if katz_deli == []
    puts 'The line is currently empty.'
  else
    line_numbers = []
    katz_deli.each do |name|
      line_numbers.push(" #{line_numbers.length+1}. #{name}")
    end
    print 'The line is currently:'
    line_numbers_counter = 0
    while line_numbers_counter < line_numbers.length do
      print "#{line_numbers[line_numbers_counter]}"
      line_numbers_counter += 1
    end
  end
end

def take_a_number(line, name)
  puts "Welcome #{name}, you are number #{line.length+1} in line."
  line.push(" #{line_numbers.length+1}. #{name}")
end
