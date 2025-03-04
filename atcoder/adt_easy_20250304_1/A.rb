inputs= gets.chomp.split(" ")

center= Integer(inputs[1])

real_center= ((Integer(inputs[0]) + Integer(inputs[2])) / 2).round()

if real_center != center
	print "No"
else 
	print "Yes"
end