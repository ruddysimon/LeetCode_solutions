class Solution:
    def sumOfDigits(self, A: List[int]) -> int:
        
        count_of_digits = 0
        min_number = A[0]
        
        for i in range(len(A)):
            if A[i] < min_number:
                min_number = A[i]

                
        for j in str(min_number):
            count_of_digits += int(j)

                    
        if count_of_digits % 2 == 0:
            return 1
        else:
            return 0