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

inputs= gets.chomp.split(" ")
id= inputs[0]
pw= inputs[1]
dongsub= Student.new(id, pw)
dongsub.to_s