# @param {Integer[]} a
# @return {Integer}
def sum_of_digits(a)
  minNumDigitsSum = a.min.to_s.chars.map(&:to_i).sum
  minNumDigitsSum % 2 == 1 ? 0 : 1
end