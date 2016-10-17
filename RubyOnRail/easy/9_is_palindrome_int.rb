# Determine whether an integer is a palindrome. Do this without extra space.
# 
# click to show spoilers.
# 
# Subscribe to see which companies asked this question
# 
# Show Tags
# Show Similar Problems



# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  orig = x

  sum = 0
  while x > 0
    x, rem = x.divmod(10)
    sum = sum * 10 + rem
  end
  sum == orig
end