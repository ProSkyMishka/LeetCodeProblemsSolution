/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l3: ListNode?
        var l1Copy = l1
        var l2Copy = l2
        var rest = 0

        while true {
            var first = (l1Copy ?? ListNode()).val
            var second = (l2Copy ?? ListNode()).val
            var sum = first + second + rest
            rest = 0
            if sum > 9 {
                rest = 1
                sum -= 10
            }
            let copy = ListNode(sum, l3)
            if l1Copy != nil {
                l1Copy = l1Copy?.next
            }
            if l2Copy != nil {
                l2Copy = l2Copy?.next
            }
            l3 = copy
            if l1Copy == nil && l2Copy == nil {
                break
            }
        }
        
        if rest != 0 {
            let copy = ListNode(rest, l3)
            l3 = copy
        }
        
        var copy: ListNode?
        while l3 != nil {
            var temp = ListNode(l3!.val, copy)
            l3 = l3?.next
            copy = temp
        }
        
        return copy
    }
}
