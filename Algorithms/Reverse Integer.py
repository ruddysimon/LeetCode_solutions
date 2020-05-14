class Solution:
    def subtractProductAndSum(self, n: int) -> int:
        ####################
        # Solution 1
        # t = n
        # list_t = []
        # list_t.append(t%10)
        # t = int((t - list_t[-1])/10) 
        # while(t > 0):
        #     list_t.append(t%10)
        #     t = int((t - list_t[-1])/10)   
        # list_t = list_t[::-1]
        # n_list = list_t
        #####################
        
        
        # Solution 2
        n_str = str(n)
        n_list = [int(i) for i in n_str]
        
        p_n = 1
        s_n = 0
        
        for i in n_list:
            p_n = p_n * i
            s_n = s_n + i
            
        return p_n - s_n    
        
        
            
        