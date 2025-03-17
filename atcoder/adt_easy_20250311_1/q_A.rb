n= Integer(gets.chomp)
s= gets.chomp
dictionary= ["A" => 0, "B"=> 0, "C" => 0]
char_array= s.chars
idx= 1

for c in char_array do
  if c == "A"
    dictionary[0]["A"]+=1
  elsif c == "B"
    dictionary[0]["B"]+=1
  elsif c == "C"
    dictionary[0]["C"]+=1
  end

  if dictionary[0]["A"] >= 1 and dictionary[0]["B"] >=1 and dictionary[0]["C"] >= 1
    p idx
    return nil
  end

  idx+=1
end

