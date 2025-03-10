def solution(my_string, n)
  answer = ''

  chars_arr= my_string.chars
  chars_arr.each do |e|
    answer += (e * n)
  end
  return answer
end