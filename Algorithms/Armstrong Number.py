class Solution:
    def isArmstrong(self, N: int) -> bool:
        n_str = str(N)
        n_list = [int(i) for i in n_str]
        len_list = len(n_list)
        power_list = [x**len_list for x in n_list]
        num_list = [i for i in power_list]
        sum_list = sum(num_list)
        if sum_list == N:
            return True
        else:
            return False