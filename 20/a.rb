# @param {String} s
# @return {Boolean}
def is_valid(s)
  parenStack = []
  s.chars.each do |c|
    if pair_match?(c, parenStack[-1]) then
      parenStack.pop()
    else
      parenStack.push(c)
    end
  end
    
  parenStack.length == 0
end

def pair_match?(c1, c2)
  case c1
    when ')'
      c2 == '('
    when ']'
      c2 == '['
    when '}'
      c2 == '{'
  end
end