class Hamming
	VERSION = 1	
	def self.compute(dna1, dna2)
		if dna1 == dna2
			0
		elsif dna1.length != dna2.length
			raise(ArgumentError) 

		else
			count = 0
			dna1.each_char.with_index do |char, index|
				if char != dna2[index]
					count += 1
				end
			end
			count
		end
	end
end