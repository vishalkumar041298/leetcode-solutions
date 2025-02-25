class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        sol = {}

        for i in strs:
            s = sorted(i)
            sorte = "".join(s)
            if sorte not in sol.keys():
                sol[sorte] = [i]
            else:
                sol[sorte].append(i)
        
        return [i for i in sol.values()]