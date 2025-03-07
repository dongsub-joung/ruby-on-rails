class Student
	attr_accessor :id, :pw, :name
	@id
	@pw

	def self.new(id, pw)
		@id= id
		@pw= pw
		return self
	end

	def to_s
		p "#{self.id} + #{self.pw}"
	end
end


dongsub_id= "dongsub"
dongsub_pw= "123"
dongsub= Student.new(dongsub_id, dongsub_pw)
db= { "dongsub" => dongsub }

inputs= gets.chomp.split(" ")
id= inputs[0]
pw= inputs[1]

if db.include?(id)
	p db[id]
else 
	someone= Student.new(id, pw)
	db[id]= someone
	someone.to_s
end