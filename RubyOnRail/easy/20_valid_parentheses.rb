# Given a string containing just the characters '(', ')', '{', '}', 
# '[' and ']', determine if the input string is valid.
# 
# The brackets must close in the correct order, 
# "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
# 
# Subscribe to see which companies asked this question

def is_valid(s)
  stack = []

  s.each_char do |ch|
    case ch
    when '(', '{', '['
      stack.push(ch)
    when ')'
      return false if stack.pop != '('
    when '}'
      return false if stack.pop != '{'
    when ']'
      return false if stack.pop != '['
    else
      nil
    end
  end
  stack.empty?
end