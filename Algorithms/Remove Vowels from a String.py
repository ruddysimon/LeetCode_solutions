class Solution:
    def removeVowels(self, S: str) -> str:
        vowels = 'a','e','i','o','u'
        for i in S.lower():
            if i in vowels:
                S = S.replace(i,"")
        return S