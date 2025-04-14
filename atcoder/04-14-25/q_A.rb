input_list= gets.chomp.split

idx= 0
num_array= []
input_list.each { |e| 
    num_array[idx]= Integer(e)
    idx+=1
} 

a= num_array[0]
b= num_array[1]

gap= b-a
if gap == -9 or gap ==9
    puts "Yes"
elsif gap == 1 or gap ==-1
    puts "Yes"
else 
    puts "No"
end