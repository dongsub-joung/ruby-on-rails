def authing(input_user_name, pw)
    users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
    ]
    p users[:input_user_name]
    condition_a= users[:input_user_name] == pw
    users.each do |a_user| 
        if condition_a
            return users[:input_user_name];
        end
    end
end


puts "Welcome to the authenticator"
25.times { print "-" }
p "ID"
input_user_name= gets.chomp
p "PW"
input_user_pw= gets.chomp

result= authing(input_user_name, input_user_pw)

p result