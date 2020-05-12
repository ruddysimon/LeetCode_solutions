class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        max_candies = max(candies)
        # print(max_candies) print the maximum value 'debugging'
        # loop through the candies list
        for i in range(len(candies)):
            # use if/else statement
            if candies[i] + extraCandies >= max_candies:
                yield True
            else:
                yield False