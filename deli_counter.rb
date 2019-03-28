def line(array)
  new_array = array.map {|person| "#{array.find_index(person) + 1}. #{person}"}
  puts "The line is currently: #{new_array.join(' ')}" if array.size > 0
  puts "The line is currently empty." if array.size == 0
end

def take_a_number(line,name)
  line.push(name)
  puts "Welcome, #{name}. You are number #{line.size} in line."
end

def now_serving(array)
  puts "Currently serving #{array.shift}." if array.size > 0
  puts "There is nobody waiting to be served!" if array.size == 0
end
