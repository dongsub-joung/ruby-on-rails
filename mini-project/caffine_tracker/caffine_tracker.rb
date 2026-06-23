require 'date'

class Time
  attr_accessor :year, :moth, :day, :hour, :min

  def initialize()
    time= DateTime.now
    
    @year= time.year
    @month= time.month
    @day= time.day
    @min= time.min
    @hour= time.hour
    
    return DateTime.new(@year, @month, @day, @hour, @min, 0)
  end
end

class CaffineType
  attr_accessor :consumed, :amount

  def initialize(str)
    @consumed= 0

    if str == "coffee"
      @amount= @consumed+80
    end

    if str == "capsul"
      @amount= @consumed+200
    end
  end

  def gone_time(str)
    if str == "coffee"
      @amount= @consumed - 80
    end
    if str == "capsul"
      @amount= @consumed - 200
    end
  end
end

class Caffine
  # working in +20min ~ 3hour 
  attr_accessor :type, :mg, :time

  def initialize(type, date)
    @type = type
    @mg = type.consumed
    @time = DateTime.now.hour
  end

  def puts_amount_mg()
    puts "[#{@mg}]mg : #{@time} hour"
  end
end

# init
now_date= Time.new()
user_input= "coffee"

caffine_type= CaffineType.new(user_input)
caffine_usage= Caffine.new(caffine_type, now_date)
puts caffine_usage.puts_amount_mg()

if (caffine_usage.time + 3) == DateTime.now().hour
  caffine_type.gone_time(user_input)  
end



# private value?

# Date test
# test1 [time]: puts Time.new()
# test2 [remove time]: if (caffine_usage.time + 3) == 21