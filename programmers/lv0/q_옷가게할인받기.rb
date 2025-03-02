def solution(price)
	one_step_rate= 0.05
	two_step_rate= 0.1
	three_step_rate= 0.2

	one_step= 100000
	two_step= 300000
	three_step= 500000

	if price >= three_step
		result= price - (price * three_step_rate).round()
		return result
	elsif price >= two_step
		result= price - (price * two_step_rate).round()
		return result
	elsif price >= one_step
		result= price - (price * one_step_rate).round()
		return result
	else
		return price.round()
	end
end
