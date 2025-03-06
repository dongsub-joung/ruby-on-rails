def solution(money)
    answer = Array.new
    coffee= 5500
    volum= money / coffee
    remained= money % coffee
    answer.push volum
    answer.push remained
    
    return answer
end

p solution(15000)