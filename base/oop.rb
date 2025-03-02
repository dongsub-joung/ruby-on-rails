class Student
	attr_accessor :frist_name, :last_name
	@frist_name
	@last_name

	def set_frist_name(name)
		@frist_name= name
	end
end

dongsub= Student.new
dongsub.set_frist_name("Joung")
dongsub.last_name= "DongSub"
p dongsub