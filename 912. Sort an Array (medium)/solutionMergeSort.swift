class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        if nums.count < 2 {
            return nums
        }
        
        let n = nums.count
        let mid = n / 2
        
        let numsOne = Array(nums[0..<mid])
        let numsTwo = Array(nums[mid..<n])
        
        let numsResOne = sortArray(numsOne)
        let numsResTwo = sortArray(numsTwo)
        
        return mergeArrays(numsResOne, numsResTwo)
    }
    
    func mergeArrays(_ numsOne: [Int], _ numsTwo: [Int]) -> [Int] {
        let m = numsOne.count
        let k = numsTwo.count
        let n = m + k
        
        var result: [Int] = []
        var indexOne = 0
        var indexTwo = 0
        for _ in 0..<n {
            if indexOne >= m  {
                result.append(numsTwo[indexTwo])
                indexTwo += 1
            } else if indexTwo >= k {
                result.append(numsOne[indexOne])
                indexOne += 1
            } else if numsOne[indexOne] <= numsTwo[indexTwo] {
                result.append(numsOne[indexOne])
                indexOne += 1
            } else {
                result.append(numsTwo[indexTwo])
                indexTwo += 1
            }
        }
        
        return result
    }
}
