def solution(n, t)
  answer= n

  while t >= 1 do
    answer *= 2
    t-= 1
  end
  return answer
end

