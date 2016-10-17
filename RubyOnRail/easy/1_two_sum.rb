# Given an array of integers, return indices of the two numbers such that they add up to a # specific target.
# 
# You may assume that each input would have exactly one solution.
# 
# Example:
# Given nums = [2, 7, 11, 15], target = 9,
# 
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].
# UPDATE (2016/2/13):
# The return format had been changed to zero-based indices. Please read the above updated # description carefully.


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    if nums.length < 2
        return []
    end
    dict = Hash.new
    (0..nums.length).each do |i|
        if dict.key?(nums[i])
            return [dict[nums[i]], i]
        else
            dict[target - nums[i]] = i
        end
    end
end