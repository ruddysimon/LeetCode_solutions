class Solution:
    def balancedStringSplit(self, s: str) -> int:
        # We want to return the max balanced string
        max_balanced = 0
        # We need to count all the strings 
        count = 0
        for i in (s):
            # If we see R we're going to increment the count and if we see L we're going to decrement the count.
            if i == 'R':
                count += 1
            if i == 'L':
                count -= 1
            # If our count is 0 it means that we have an equal balance R and L
            if count == 0:
                max_balanced += 1
        return max_balanced