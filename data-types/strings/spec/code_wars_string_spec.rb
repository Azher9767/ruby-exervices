=begin
  Write a function that accepts an integer [n] and a string [s] as parameters, and returns a string of [s] repeated exactly n times.

  example 6, "I"     -> "IIIIII"
  5, "Hello" -> "HelloHelloHelloHelloHello"
=end

RSpec.describe "repeat_str" do
  def repeat_str(n,s)
    s*n
  end
  
  it "should return three stars" do
    expect(repeat_str(3, "*")).to eq('***')
  end

  it "should return 5 hashes" do
    expect(repeat_str(5, "#")).to eq('#####')
  end

  it "should return 2  string" do
    expect(repeat_str(2, "ha")).to eq('haha')
  end
end

=begin
 the solution so that it reverses the string passed into it.

for example
'world'  =>  'dlrow'
'word'   =>  'drow' 
=end

RSpec.describe "Fixed tests" do
  def solution(str)
    rev_str = str.reverse
  end

  it "should pass fixed tests" do
    expect(solution('world')).to eq('dlrow')
  end

  it "should pass fixed tests" do
    expect(solution('hello')).to eq('olleh')
  end

  it "should pass fixed tests" do
    expect(solution('')).to eq('') 
  end

  it "should pass fixed tests" do
    expect(solution('h')).to eq('h') 
  end
end

=begin
- We need a function that can transform a number (integer) into a string.
- What ways of achieving this do you know?
Examples (input --> output):
123  --> "123"
999  --> "999"
-100 --> "-100" 
=end
RSpec.describe "Solution" do
  def number_to_string(num)
    num.to_s
  end

  it "Fixed tests" do
    expect(number_to_string(67)).to eq('67')
  end
end