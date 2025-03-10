def solution(n, w, num)
    answer, col= 0
    row= (num-1)/w
    w_idx= w-1

    if row %2 == 0
        col= (num-1) % w
    else
        col= w_idx-(num-1) % w
    end

    until_number= (n+w_idx) / w
    for e in row..until_number-1
        above_box= 0
        if row % 2 == 0
            above_box= col + (row * w)
        else
            above_box= (w_idx- col) + (row*w)
        end

        if above_box < n
            answer+= 1
        end
    end
    return answer
end

p solution(13,3,6)
p solution(22,   6,   8 )