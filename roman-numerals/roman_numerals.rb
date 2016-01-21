class Integer

	VERSION = 1

	def to_roman
		arab_num = self
		str = ""
		roman_mapping.each do |mapp_number|

			while arab_num >= mapp_number.first	
				str << mapp_number.last
				arab_num = arab_num - mapp_number.first	
			end
		end
		str 
	end

	private

	def roman_mapping
		{
			1000 => "M",
			900 => "CM",
			500 => "D",
			400 => "CD",
			100 => "C",
			90 => "XC",
			50 => "L",
			40 => "XL",
			10 => "X",
			9 => "IX",
			5 => "V",
			4 => "IV",
			1 => "I"
		}
	end
end