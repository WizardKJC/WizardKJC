class MyCipher

	@@captial_letters = ("A".."Z").to_a
	@@lower_letters = ("a".."z").to_a

	attr_accessor :key

	def initialize key
		@key = key
	end

	def encrypt text

		encrypted = ""
		text.split("").to_a.each do |elem|
			if @@captial_letters.include? elem
				encrypted += @@captial_letters[(@@captial_letters.index(elem) + key) % 26]
			elsif @@lower_letters.include? elem
				encrypted += @@lower_letters[(@@lower_letters.index(elem) +key) % 26]
			else
				encrypted += elem
			end

		end
		return encrypted
	end

	def decrypt text
		decrypted = ""
		text.split("").to_a.each do |elem|
			if @@captial_letters.include? elem
				decrypted += @@captial_letters[(@@captial_letters.index(elem) - key) % 26]
			elsif @@lower_letters.include? elem
				decrypted += @@lower_letters[(@@lower_letters.index(elem) - key) % 26]
			else
				decrypted += elem
			end

		end
	return decrypted
	end
end

	cipher = MyCipher.new(6)
	puts cipher.encrypt("dev.rubyist@outlook.com")
	puts cipher.decrypt("jkb.xaheoyz@uazruuq.ius")

