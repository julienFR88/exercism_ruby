class Complement
	def self.of_dna(test)
		dna = ''

		test.each_char do |char|
			if char == "C"
				dna += "G"
			elsif char == "G"
				dna += "C"
			elsif char == "T"
				dna += "A"
			elsif char == "A"
				dna +="U"
			else
				raise(ArgumentError)
			end	
		end
		dna
	end
		
	def self.of_rna(test)
		rna = ''

		test.each_char do |char|
			if char == "C"
				rna += "G"
			elsif char == "G"
				rna += "C"
			elsif char == "U"
				rna += "A"
			elsif  char == "A"
				rna +="T"
			else
				raise(ArgumentError)
			end	
		end
		rna		
	end
end
	