def translate(words) 
	vowels = %w{a e i o u}
	phenomes = %w{qu}
	words = words.split(' ')
	new_words = [] #because I'm an idiot with ruby..
	words.each do |word|
		if vowels.include?(word[0]) || vowels.include?(word[0..1])
			word << 'ay'
		else
			until vowels.include?(word[0])
				phenomes.include?(word[0..1]) ? word = word[2..-1] << word[0..1]: word = word[1..-1] << word[0]
			end

			word << 'ay'
		end
		new_words << word
	end
	p new_words
	new_words.join(' ')
end