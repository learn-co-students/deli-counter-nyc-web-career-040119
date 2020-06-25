katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts  "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.map.with_index do |name, i|
    current_line  << " #{i+1}. #{name}"
    end
    puts current_line
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
  next_customer = katz_deli.shift
  puts "Currently serving #{next_customer}."
  end
end
