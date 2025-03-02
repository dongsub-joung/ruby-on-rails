puts "First name?"
first_name= gets.chomp
puts "Second name?"
second_name= gets.chomp

puts "Full name: #{first_name} #{second_name}"

full_name= first_name + second_name

string_size= first_name.length + second_name.length
puts "Character len: #{string_size}"

reversed_name= String.new
full_name_array= full_name.chars
for i in string_size..0 do
    reversed_name+= full_name_array[i]
end
puts "#{full_name_array[-1..0]}"
puts "#{reversed_name}"