public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current = head
        var result: ListNode? = nil
        
        while let val = current?.val {
            result = ListNode(val, result)
            current = current?.next
        }
        
        return result
    }
}


let l = ListNode(1, ListNode(4, ListNode(5)))

let res = Solution().reverseList(l)
print(res?.val)
print(res?.next?.val)
print(res?.next?.next?.val)
