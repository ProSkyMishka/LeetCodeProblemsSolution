class Solution {
    func sortColors(_ nums: inout [Int]) {
        var hashTable: [Int: Int] = [:]

        for i in nums {
            if hashTable[i] != nil {
                hashTable[i]? += 1
            } else {
                hashTable[i] = 1
            }
        }

        for i in 0..<nums.count {
            if hashTable[0] != nil && hashTable[0]! > 0 {
                nums[i] = 0
                hashTable[0]? -= 1
            } else if hashTable[1] != nil && hashTable[1]! > 0 {
                nums[i] = 1
                hashTable[1]? -= 1
            } else {
                nums[i] = 2
                hashTable[2]? -= 1
            }
        }
    }
}