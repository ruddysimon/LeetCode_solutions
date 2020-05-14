class Solution:
    def findNumbers(self, nums: List[int]) -> int:
        count_even = 0
        for i in (nums):
            if len(str(i)) % 2 == 0 :
                count_even += 1
        return count_even