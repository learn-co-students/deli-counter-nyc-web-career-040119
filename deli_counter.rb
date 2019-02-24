# Write your code here.
katz_deli = [] # Holds the incoming customers.

def take_a_number(katz_deli, name) # Takes deli line and a new customer name as input.
  katz_deli.push(name) # Add new customer to deli line.
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line." # Returns the required string.
end

def now_serving(katz_deli)
  first_person_in_line = ""
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    first_person_in_line = katz_deli[0]
    katz_deli.shift
    puts "Currently serving #{first_person_in_line}."
  end
end

def line(katz_deli)

  line_message = "" # Holds the message of the customers on line.
  local_array_for_customers = []
  local_array_for_customers += katz_deli
  line_counter = katz_deli.size - 1
  number_counter = 1

  if katz_deli.size == 0 #If the function is called and there's no one on line then...
    puts "The line is currently empty." #...say this string.
  else # However, if someone is on line then...
    line_message += "The line is currently: 1. #{katz_deli[0]}" #...add their info to the line message...
    while line_counter > 0
      local_array_for_customers.shift
      line_message += " #{number_counter + 1}. #{local_array_for_customers[0]}"
      number_counter += 1
      line_counter -= 1
    end
  #  line_message += "." #...add a period to the end of the line message.
    puts line_message #Returns the required string.
  end
end
