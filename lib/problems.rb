# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require "byebug"

def largest_prime_factor(num)
  i = num
  while i > 0
    return i if is_prime?(i) && num % i == 0
    i -= 1
  end
end

def is_prime?(num)
  if num <= 2
    return true
  end

  (2...num).each do |factor|
    if num % factor == 0
        return false
    end
  end
  true
end

def unique_chars?(str)
  str.each_char.with_index do |char, idx|
    (idx + 1...str.length).each do |i|
        if str[i] == char
            return false
        end
    end
  end
  true 
end

def dupe_indices(arr)
  hash = Hash.new { |h, k| h[k] = []}
  #debugger 
  arr.each_with_index { |elem, idx| hash[elem] << idx }
  hash.select { |key, val| val.length > 1 }
end

def ana_array(arr_1, arr_2)
  hash_1 = Hash.new(0)
  hash_2 = Hash.new(0)
  arr_1.each { |elem| hash_1[elem] += 1 }
  arr_2.each { |elem| hash_2[elem] += 1 }
  if hash_1 == hash_2
    return true
  end
  false
end

