# The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: 
# (you may want to display this pattern in a fixed font for # better legibility)
# 
# P   A   H   N
# A P L S I I G
# Y   I   R
# And then read line by line: "PAHNAPLSIIGYIR"
# Write the code that will take a string and make this conversion given a number of rows:
# 
# string convert(string text, int nRows);
# convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".


# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    return s if num_rows == 1 || s.size <= num_rows
    result, interval = '', 2 * num_rows - 2
    0.upto(num_rows - 1) do |row|
        cur = row
        while cur < s.length do
            result << s[cur].to_s
            cur += interval;
            if row > 0 && row < num_rows -1 && cur-row*2 < s.length
                result << s[cur - row * 2].to_s
            end
        end
    end
    return result
end