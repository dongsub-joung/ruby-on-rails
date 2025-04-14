n_list= []
input_list= gets.chomp.split
input_list.each { |f| n_list.append(Integer(f))}

integer_list= []
idx= 2

if n_list.sum == 0
    p 1
else
    for e in n_list do         
        if e % idx == 0
            integer_list.append(idx)
        end
        idx+= 1
    end

    p integer_list
end

