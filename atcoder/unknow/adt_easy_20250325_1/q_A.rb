first_iput= gets.chomp
n, x= first_iput.split(" ")
number_str_list= gets.chomp.split(" ")
number_list= []
number_str_list.each do |e|
  number_list.append(Integer(e))
end

sum= 0
number_list.each do |e|
  if e <= Integer(x)
    sum+= e
  end
end

p sum