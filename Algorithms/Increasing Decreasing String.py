class Solution:
    def sortString(self, s: str) -> str:
        list1 = list(s)
        res = ''
        while list1:
            for letters in sorted(set(list1)):
                list1.remove(letters)
                res+=letters
            for letters in sorted(set(list1), reverse=True):
                list1.remove(letters)
                res+=letters
        return res