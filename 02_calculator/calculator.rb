def add(a, b)
	a+b
end

def subtract(a, b)
	a-b
end

def sum(arr)
	arr.inject(0){|a, b| a + b}
end

def multiply(arr)
	arr.inject(1){|a, b| a * b}
end

def power(a, b)
	a**b
end

def factorial(a)
	a <= 0 ? 1 : a * factorial(a-1)
end