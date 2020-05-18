class Solution:
    def busyStudent(self, startTime: List[int], endTime: List[int], queryTime: int) -> int:
        counter = 0
        for i in range (0,len(startTime)):
            if startTime[i] <= queryTime <= endTime[i]:
                counter+=1
            else:
                continue
        return counter