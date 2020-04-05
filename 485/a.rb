# Better performance answer
# def find_max_consecutive_ones(nums)
#   curLongest = 0
#   streaks = []
#   nums.each do |num|
#     if num == 1 then curLongest += 1
#     else
#       streaks.push(curLongest)
#       curLongest = 0
#     end
#   end

#   streaks.push(curLongest)
#   streaks.max()
# end
  
# Fun Answer
def find_max_consecutive_ones(nums)
  nums.join().split('0').map{|s| s.length}.max() || 0
end