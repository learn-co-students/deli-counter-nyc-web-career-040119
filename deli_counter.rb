def line(current_line)
  if current_line.size == 0
    puts "The line is currently empty."
  else
    order = []
    place = 1
    current_line.each do |customer|
    order.push("#{place}. #{customer}")
    place += 1
  end
    puts "The line is currently: #{order.join(" ")}"
  end
end

def take_a_number(line, name)
  line.push(name)
  puts "Welcome, #{name}. You are number #{line.size} in line."
end

def now_serving(line)
  if line.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}."
    line.shift
  end
end