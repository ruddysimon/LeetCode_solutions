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

# List Solution
class Solution:
    def destCity(self, paths: List[List[str]]) -> str:
        start_city = set([path[0] for path in paths])
        end_city = set([path[1] for path in paths])
        return list(end_city - start_city)[0]