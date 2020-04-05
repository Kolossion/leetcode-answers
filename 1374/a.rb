# @param {Integer} n
# @return {String}
def generate_the_string(n)
  outputWord = ""
  if n % 2 == 1
    outputWord = Array.new(n).fill("a").join()
  else
    outputWord = Array.new(n - 1).fill("a").join("") + "b"
  end
  outputWord
end