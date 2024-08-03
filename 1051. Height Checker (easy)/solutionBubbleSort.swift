class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        var expected = heights
        for _ in 0..<heights.count {
            var flag = true
            for i in 0..<(heights.count - 1) {
                if expected[i] > expected[i + 1] {
                    expected.swapAt(i, i + 1)
                    flag = false
                }
            }
            if flag {
                break
            }
        }
        
        var count = 0
        for i in 0..<heights.count {
            if heights[i] != expected[i] {
                count += 1
            }
        }
        
        return count
    }
}
