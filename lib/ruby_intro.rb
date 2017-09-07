# When done, submit this entire file to the ICON HW1 Dropbox.

# Part 1

def sum arr
  arr.inject(0) {|sum,i| sum+i}
end

def max_2_sum arr
  arr.sort.reverse.first(2).inject(0) {|sum,i| sum+i}
end

def sum_to_n? arr, n
 return false if arr.empty? && n.zero? == false
 if arr.combination(2).any? {|first, second| first + second == n}
   return true
 end
 return false
end

# Part 2

def hello(name)
  return "Hello, ".concat(name)
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  if s.upcase.start_with? 'B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z'
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s.empty? == true
    return false
  end
  if s.chars.all? {|x| x=~ /[01]/} == true
    if s.to_i(2) % 4 == 0
      return true
    elsif s.to_i(2) % 4 != 0
      return false
    end
  elsif s.chars.all? {|x| x=~ /[01]/} == false
    return false
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new("Not a valid isbn") if isbn.empty? == true 
    raise ArgumentError.new("Not a valid price") if price <= 0
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn, :price
  def price_as_string
    return sprintf("$%2.2f", @price)
  end
end
