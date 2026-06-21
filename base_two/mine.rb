class MyClass
  attr_accessor name

  def initialize(name)
    @name= name
  end

  def say()
    puts("#{@name}")
  end
end

my_class= MyClass.new("DongSub")
my_class.say()
