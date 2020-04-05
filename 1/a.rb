# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  indexMap = Hash.new
  
  nums.each_with_index do |num, i|
    unless indexMap[num].nil?
      indexMap[num].push(i)
    else
      indexMap[num] = [i]
    end
  end
  
  nums.each_with_index do |num, i|
    diffNum = target - num
    mapGrab = indexMap[diffNum]
    next if mapGrab.nil?
    next if diffNum == num && mapGrab.length == 1 && mapGrab[0] == i
    return [i, mapGrab.bsearch{|el| el != i}]
  end
    
end

# Note: Try out a single-pass hash table approach.