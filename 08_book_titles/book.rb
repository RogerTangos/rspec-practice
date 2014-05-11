class Book
	attr_accessor :title

	def title=(val)
		@title = val
		@title = @title.split(' ').map{|x| is_i?(x) ? x : x.capitalize}
		puts "#{@title}-----"
		@title = @title.map{|x| 
			(conjunctions?(x) or prepositions?(x)) ? x.downcase! : x}
		@title = @title.join(' ')
		@title = @title.slice(0,1).capitalize + @title.slice(1..-1)
	end	

	def conjunctions?(word)
		conjunction_list = ['and', 'but', 'or', 'yet', 'for', 'nor', 'so']
		conjunction_list.include?(word.downcase) ? true : false
	end

	def prepositions?(word)
		preposition_list = ["a","an","aboard","about","above","across","after","against","along","amid","among","anti","around","as","at","before","behind","below","beneath","beside","besides","between","beyond","but","by","concerning","considering","despite","down","during","except","excepting","excluding","following","for","from","in","inside","into","like","minus","near","of","off","on","onto","opposite","outside","over","past","per","plus","regarding","round","save","since","than","the","through","toward","towards","under","underneath","unlike","until","up","upon","versus","via","with","within","without"]
		preposition_list.include?(word.downcase) ? true : false
	end

	def is_i?(word)
    	!!(word =~ /^[-+]?[0-9]+$/)
    end

end
