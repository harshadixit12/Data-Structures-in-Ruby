#Singly Linked List in Ruby, with traversal, insert and delete operations 
class Node
  attr_accessor :next
  attr_reader   :data
  def initialize(val)
    @data = val
    @next = nil
  end
end

class Linked_list
  def initialize(val)
    @head = Node.new(val)
  end
  
  def insert(val)
    temp1 = @head
    while temp1.next
      temp1 = temp1.next
    end
    temp2 = Node.new(val)
    temp1.next = temp2
  end
  
  def printlist
    temp = @head
    while temp!=nil
       puts temp.data
       temp = temp.next
    end
  end
  def delete(val)
    temp1 = @head
    if @head.data==val
      @head = temp1.next
      return
    end
    
    temp1 = temp1.next while temp1.next.data!=val
    temp1.next = temp1.next.next
  end
  
  
end


list1 = Linked_list.new(1)
list1.insert(2)
list1.insert(3)
list1.insert(4)
list1.insert(5)
list1.insert(6)
list1.insert(7)
list1.insert(8)
list1.insert(9)
list1.insert(10)

list1.printlist
list1.delete(1)
list1.delete(5)
list1.delete(10)
list1.printlist

