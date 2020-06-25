require 'pry'

def line(current_line)
  if current_line.size > 0
    customer_with_position = ''
    current_line.each_with_index do |name, index|
      customer_with_position += " #{index+1}. #{name}"
    end
    puts "The line is currently:#{customer_with_position}"
  elsif current_line.size == 0
    puts "The line is currently empty."
  end
end

def take_a_number(current_line, new_customer)
  #if current_line.size == 0
    current_line.push(new_customer)
    puts "Welcome, #{new_customer}. You are number #{current_line.size} in line."
end

def now_serving(current_line)
  if current_line.size > 0
    puts "Currently serving #{current_line.shift}."
  elsif current_line.size == 0
    puts "There is nobody waiting to be served!"
  end
end