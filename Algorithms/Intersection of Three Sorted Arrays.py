class Solution:
    def arraysIntersection(self, arr1: List[int], arr2: List[int], arr3: List[int]) -> List[int]:
        list1 = [x for x in arr1 if x in arr2 and x in arr3]
        return list1