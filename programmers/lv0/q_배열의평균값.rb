def solution(numbers)
  answer = 0
  numbers.each do |n|
    answer+= n
  end
  answer = answer / numbers.length
  return answer
end

# 다른 사람 풀이
def solution(numbers)
  numbers.sum / numbers.length
end
