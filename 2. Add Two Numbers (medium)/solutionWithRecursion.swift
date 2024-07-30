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
    private var rest = 0
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 == nil && rest == 0 {
            return nil
        }
        var first = (l1 ?? ListNode()).val
        var second = (l2 ?? ListNode()).val
        var sum = first + second + rest
        rest = 0
        if sum > 9 {
            rest = 1
            sum -= 10
        }
        return ListNode(sum, addTwoNumbers(l1?.next, l2?.next))
    }
}
