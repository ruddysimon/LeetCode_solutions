class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        dic = {}
        for i in range(len(nums)):
            if target - nums[i] in dic:
                return [dic[target - nums[i]],i] # add the current index if it's in dictionary 
            else:
                dic[nums[i]] = i # add the number with the index in dictionary