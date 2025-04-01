require 'date'

def setTime()
  time= DateTime.now
  min= time.min
  hour= time.hour - 3
  year= time.year
  month= time.month
  day= time.day

  return DateTime.new(year, month, day, hour, min, 0)
end

class Caffine
  attr_accessor :type, :mmg, :time
  @type
  @mmg
  @time

  def initialize(type, mmg)
    @type = type
    @mmg = mmg
    @time = setTime()
  end

  def delete(mmg)
    @type = nil
    @mmg -= mmg 
    @time = nil
  end

end

# 1:コーヒー 2:紅茶 3:緑茶 4:エナジードリンク 5:ソフトドリンク 6:ビール 7:日本酒 8:焼酎 9:ワイン 10:その他
philie= Caffine.new(1,100)
now= DateTime.now
if now.hour - philie.time.hour < 0
  philie.delete(100)  
end 
