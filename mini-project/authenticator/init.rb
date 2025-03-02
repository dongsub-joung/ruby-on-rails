dic= Hash.new
dic["dongsub"]= 123

p "ID"
id= gets.chomp

p "PW"
pw= gets.chomp

if dic.key?(id)
	p "#{dic.each {|k, v| p "key #{k}, value #{v}"} }"
else
	p "#{id}, it's not ous"
end

