# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
total = 0
for i in arr do
total = total+i
end
return total
end

def max_2_sum arr
  # YOUR CODE HERE
if arr.length == 0
return 0
elsif arr.length == 1
return arr.at(0)
else
sum = 0
max1 = arr.at(0)
max2 =  arr.at(0)
ind1 = 0
ind2 = 0
n = arr.length
#First Largest

for i in 0..n-1 do
if arr.at(i)>max1
max1 = arr.at(i)
ind1 = i
end
end

arr.delete_at(ind1)
#Second Largest

max2 = arr.at(0)
for i in 0..n-2
if arr.at(i)>max2
max2 = arr.at(i)
ind2 = i
end
end


return max2+max1
end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
if arr.length == 0 || arr.length == 1
return false
end
len = arr.length
hash=Hash.new
bool = false
for i in arr do
diff = n-i
if hash[i]!=nil
bool = true
break
else
hash[diff] = 1
end
end
return bool
end

# Part 2

def hello(name)
  # YOUR CODE HERE
str = "Hello".concat(", ").concat(name)
return str
end

def starts_with_consonant? s
  # YOUR CODE HEREs
if (s =~ /\A(?=[^aeiou])(?=[a-z])/i)==0
return true
else 
return false
end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE

n = s.length-1
pow = 0
number = 0
flag = 0
while n>=0 do
if s[n] == "1"
number = number + (1*(2**pow))
end
if s[n] != "1" && s[n] != "0"
flag = 1
end
pow = pow+1
n = n - 1
end

if number%4 == 0 && flag == 0 && s.length!=0
return true
else
return false
end
end


# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn,price)
@isbn = isbn
@price = price
if @isbn.length==0 || @price<=0
raise ArgumentError
end
end

def isbn
@isbn
end

def price
@price
end

def isbn=(value)
@isbn = value
end

def price=(value)
@price = value
end


def price_as_string
dec = @price.to_i

str = ""
str[0] = "$"
if @price-dec==0
str=str+@price.to_s
str.concat(".00")
else
str = str+dec.to_s
str.concat((@price-dec).to_s[1..3])
end
return str
end
end
