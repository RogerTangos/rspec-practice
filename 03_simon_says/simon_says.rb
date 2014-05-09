def echo(message)
	message
end

def shout(message)
	message.upcase
end

def repeat(message, times=2)
	 ( "#{message} " * times ).strip
end

def start_of_word(word, n)
	word[0..n-1]
end

def first_word(word)
	word.split(' ')[0]
end

def titleize(sentence)
	lowercase_words = %w{a an over the and but or for nor of}
	sentence = sentence.split(' ').map{|a| lowercase_words.include?(a.downcase)? a : a.capitalize}.join(' ')
	sentence.slice(0,1).capitalize + sentence.slice(1..-1)
end