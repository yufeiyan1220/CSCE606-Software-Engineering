# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sum = 0
	for i in arr
		sum += i
	end
	return sum
end

def max_2_sum arr
	sum = 0
	if (arr.length == 0)
		return 0
	elsif (arr.length == 1)
		return arr[0]
	end

	if(arr[0] > arr[1])
		max = arr[0]
		sec_max = arr[1]
	else
		max = arr[1]
		sec_max = arr[0]
	end

	for i in 2...arr.length
		if arr[i] >= max
			sec_max = max
			max = arr[i]
		end
	end
	return sec_max + max
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	hash = {}
	for i in arr
		if(hash.has_key?(n - i))
			return true
		else
			hash[i] = true
		end
	end
	return false
end

# Part 2

def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant? s
	return s.length >= 1 && s =~ /^[a-z]/i && s=~ /^[^aeiou]/i
end

def binary_multiple_of_4? s
	return s.length >= 1 && s =~ /^0$|^[01]*00$/
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		if(isbn.length == 0 || price <= 0)
			 raise ArgumentError
		end
		@isbn = isbn
		@price = price
	end
	def price_as_string()
		return "$" + "%0.2f" % @price.to_f
	end

	def isbn
		@isbn
	end

	def price
		@price
	end
	def isbn=(v)
		@isbn = v
	end

	def price=(v)
		@price = v
	end
end
