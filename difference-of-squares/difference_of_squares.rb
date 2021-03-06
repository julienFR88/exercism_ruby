class Squares
	
	VERSION = 1

	def initialize(number)
		@number = number
	end

	def square_of_sums
		(1..@number).inject(:+) **2
	end

	def sum_of_squares
		(1..@number).inject { |sum, number| sum + (number ** 2) }
	end

	def difference
		square_of_sums - sum_of_squares
	end
end
