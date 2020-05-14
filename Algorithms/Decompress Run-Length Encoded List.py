class Solution:
    def decompressRLElist(self, nums: List[int]) -> List[int]:
        list1 = []
        for index in range(len(nums)):
            if index % 2 == 0:
                freq = nums[index]
                val = nums[index + 1]
                            
                for i in range(freq):
                    list1.append(val)
        return list1