class Solution:
    def countLetters(self, S: str) -> int:
        count = 1 
        res = 1
        for i in range(1,len(S)):
            if S[i] == S[i-1]:
                count += 1
                res+=count
            else:
                count=1
                res+=count
        return res