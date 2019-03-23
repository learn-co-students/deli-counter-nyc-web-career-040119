# Write your code here.
def line(array)
  if array.length == 0 
    puts "The line is empty."
  else 
  array.each do |name|
    puts name 
end 
end 

def take_a_number(array, name)
  array.push(name)
  puts "#{name} is currently number #{array.length -1} in line"
end
 
 def now_serving(array)
   if array.length == 0 
     puts "There is nobody waiting to be served!"
   else 
     next_name = array.shift
     puts "Now serving #{next_name}"
   end
 end 
 
     
