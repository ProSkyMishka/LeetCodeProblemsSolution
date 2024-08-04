class Solution {
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        if arr.count != target.count {
            return false
        }
        var copy = target

        for i in arr {
            if !copy.contains(i) {
                return false
            }
            var index = copy.firstIndex(of: i)
            copy.remove(at: index!)
        }

        return true
    }
}