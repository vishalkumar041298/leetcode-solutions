class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        hashmap = {}
        print(hashmap)
        for i in range(len(nums)):
            diff = target-nums[i]
            if diff in hashmap:
                return [i, hashmap[diff]]
            hashmap[nums[i]] = i
            

        # hashmap = {val: idx for idx,val in enumerate(nums)}
        # for i in range(len(nums)):
        #     diff = target-nums[i]
        #     if diff == nums[i]:
        #         continue
        #     if diff in hashmap:
        #         if
        #         return [i, hashmap[diff]]
        