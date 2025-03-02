a= %w(ruby is aw)
p a

a.each do |e| 
  p e
end

a.each do |e| 
  c_arr= e.chars
  c_arr.each do |e| 
    print e + " "
  end
end

hyaku= 1..100
z= hyaku.to_a.shuffle
p z.select { |n| n.odd? }
