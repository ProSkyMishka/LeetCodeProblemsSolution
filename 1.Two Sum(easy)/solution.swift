class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<(nums.count - 1) {
            for j in (i + 1)..<nums.count {
                var sum = nums[i] + nums[j]
                if sum == target {
                    return [i, j]
                }
            }
        }
        return [0, 0]
    }
}
