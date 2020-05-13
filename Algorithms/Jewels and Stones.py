# Solution 1
class Solution:
    def numJewelsInStones(self, J: str, S: str) -> int:
        count = 0
        for i in (S):
            if i in J:
                count += 1
        return count


# Solution 2
class Solution:
    def numJewelsInStones(self, J: str, S:str) -> int:
        return sum(i in J for i in S)