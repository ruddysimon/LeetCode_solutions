class Solution:
    def createTargetArray(self, nums: List[int], index: List[int]) -> List[int]:
        list1 = []
        for i in range(len(nums)):
            # The syntax of insert() function is -> list.insert(index, element)
            list1.insert(index[i], nums[i])
        return list1