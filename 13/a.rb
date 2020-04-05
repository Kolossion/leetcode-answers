# @param {String} s
# @return {Integer}
def roman_to_int(s)
  romanCharMap = {
    'M' => 1000,
    'D' => 500,
    'C' => 100,
    'L' => 50,
    'X' => 10,
    'V' => 5,
    'I' => 1
  }
  
  convertedList = s.chars.map { |c| romanCharMap[c] }
  
  sumList = []
  cursor = 0
  while (cursor < convertedList.size)
    if cursor == convertedList.size - 1 || convertedList[cursor] >= convertedList[cursor + 1]
      sumList.push(convertedList[cursor])
      cursor += 1
    else
      sumList.push(convertedList[cursor + 1] - convertedList[cursor])
      cursor += 2
    end
  end
  
  sumList.sum
    
end