class Solution {
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        var hashTable: [Int: Int] = [:]

        for i in arr {
            if hashTable[i] != nil {
                hashTable[i]? += 1
            } else {
                hashTable[i] = 1
            }
        }

        for i in target {
            if hashTable[i] != nil {
                hashTable[i]? -= 1
            } else {
                return false
            }
        }

        for i in hashTable.values {
            if i != 0 {
                return false
            }
        }

        return true
    }
}