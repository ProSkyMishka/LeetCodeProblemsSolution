class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashTable: [Int: Int] = [:]

        for i in 0..<nums.count {
            var res = target - nums[i]
            
            if let j = hashTable[res] {
                return [j, i]
            }
            
            hashTable[nums[i]] = i
        }
        return [0, 0]
    }
}
