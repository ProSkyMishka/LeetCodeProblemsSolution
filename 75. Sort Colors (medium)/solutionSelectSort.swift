class Solution {
    func sortColors(_ nums: inout [Int]) {
        for i in 0..<nums.count {
            var minIndex = i
            for j in (i+1)..<nums.count {
                if nums[j] < nums[minIndex] {
                    minIndex = j
                }
            }
            nums.swapAt(i, minIndex)
        }
    }
}