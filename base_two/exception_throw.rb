gfg= catch(:divide) do
  number= rand(2)
  throw :divide if number == 0
  number
end
puts gfg
