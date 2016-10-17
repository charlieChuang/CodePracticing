# Reverse digits of an integer.
# 
# Example1: x = 123, return 321
# Example2: x = -123, return -321



# @param {Integer} x
# @return {Integer}

INT_BIT = 32
INT_MAX =  2 ** (INT_BIT - 1) - 1
INT_MIN = -2 ** (INT_BIT - 1)

def reverse(x)
    return -reverse(-x) if x < 0
    sum = 0
    while x > 0
        sum = sum * 10 + x % 10
        x = x / 10
    end
    sum > INT_MAX ? 0 : sum
end