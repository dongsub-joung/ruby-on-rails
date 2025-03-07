require 'digest'

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

def auth?(obj,id, hashed)
	if obj[id] == hashed
		return true
	else
		return false
	end
end

dongsub_id= "dongsub"
dongsub_pw= "123"
hashed= Digest::MD5.hexdigest "#{dongsub_pw}"
dongsub= Student.new(dongsub_id, hashed)
db= { "dongsub" => dongsub }

inputs= gets.chomp.split(" ")
id= inputs[0]
pw= inputs[1]

input_pw_hashed= Digest::MD5.hexdigest "#{pw}"
if db.include?(id) && auth?(db, id, input_pw_hashed)
	p db[id]
else 
	someone= Student.new(id, pw)
	db[id]= someone
	someone.to_s
end

