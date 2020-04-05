# @param {String} j
# @param {String} s
# @return {Integer}

# BRUTE FORCE ( length J * length S) = O(n^2)
# def num_jewels_in_stones(j, s)
#   numJewels = 0  
#   s.chars.each do | c |
#     numJewels += 1 if j.include?(c)
#   end
#   numJewels
# end

# Hash for O(1) count access. Iterates over each list only once.
# O(length J + length S) = O(n)
def num_jewels_in_stones(j, s)
  jewelCount = 0
  countHash = Hash.new(0)
  
  s.chars.each do | c |
    countHash[c] += 1
  end
  
  j.chars.sum { |type| countHash[type] }
end