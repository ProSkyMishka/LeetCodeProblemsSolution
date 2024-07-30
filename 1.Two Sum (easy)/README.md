# 1. Two Sum
###### Easy | Topics : Array, Hash Table

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.

### Example 1:
Input: nums = [2,7,11,15], target = 9\
Output: [0,1]\
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

### Example 2:
Input: nums = [3,2,4], target = 6\
Output: [1,2]

### Example 3:
Input: nums = [3,3], target = 6\
Output: [0,1]

#### 

## solutionHashTable:
O(n^2)
Best try: 17ms (Beats 92.29%), 16.43MB (Beats 31.15%)

## solutionBruteForce:
O(n)
Best try: 47ms (Beats 32.79%), 16.17MB (Beats 76.15%)
