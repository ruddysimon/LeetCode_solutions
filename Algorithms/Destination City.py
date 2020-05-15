class Solution:
    def destCity(self, paths: List[List[str]]) -> str:
        dic ={}
        for index in paths:
            key = index[0]
            values = index[1]
            dic[key] = values
            print(dic)
        for i, j in dic.items():
                if j not in dic:
                    return j