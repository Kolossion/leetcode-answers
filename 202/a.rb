# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  visited = Hash.new(false)
  cur_num = n
  
  while cur_num != 1 do
      if visited.has_key?(cur_num) then
          return false
      end
      
      next_num = cur_num.to_s.chars.map{|n| (n.to_i) ** 2}.sum
      visited[cur_num] = true
      cur_num = next_num
  end
  
  true
end