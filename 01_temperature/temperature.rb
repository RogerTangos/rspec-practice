def ftoc(farenheight)
	farenheight = farenheight.to_f	
	(farenheight-32) * 5/9
end

def ctof(celcius)
	celcius = celcius.to_f
	(celcius * 9) / 5 + 32 
end
