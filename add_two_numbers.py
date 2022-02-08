# Definition for singly-linked list.
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class LinkedList:
    
    def __init__(self, list_vals:list):
        
        self.linked_list = self._list_to_link(list_vals)
        
    def _list_to_link(self, vals:list):
    
        cur = dummy = ListNode(0)
        for v in vals:
            cur.next = ListNode(v)
            cur = cur.next

        return dummy.next
    
def linked_to_list(linked_list:ListNode):
    
    val_list = []
    curr_node = linked_list
    while curr_node.next is not None:
        
        val_list.append(curr_node.val)
        curr_node = curr_node.next
    val_list.append(curr_node.val)
    
    return val_list
    
class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        
        l1_list = linked_to_list(l1)
        l2_list = linked_to_list(l2)

        l1_list.reverse()
        l2_list.reverse()

        l1_int:int = int(''.join([str(i) for i in l1_list]))
        l2_int:int = int(''.join([str(i) for i in l2_list]))

        result = [int(i) for i in str(l1_int + l2_int)]
        result.reverse()

        result = LinkedList(result).linked_list
        
        return result
        
