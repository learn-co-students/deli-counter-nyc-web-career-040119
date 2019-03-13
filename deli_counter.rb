# Write your code here.

def line(array)
  if array.size == 0
    puts "The line is currently empty."
  else
    new_array = []
    array.each do |person|
      new_array << "#{array.find_index(person) + 1}. #{person}"
    end
    puts "The line is currently: #{new_array.join(' ')}"
  end
end

def take_a_number(line,name)
  line.push(name)
  puts "Welcome, #{name}. You are number #{line.size} in line."
end

def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.shift}."
  end
end