#Doubly Linked List
class Node
  attr_accessor :next
  attr_reader   :data
  attr_accessor :prev
  def initialize(val)
    @data = val
    @next = nil
    @prev = nil
  end
end

class D_linked_list
  def initialize(val)
  @head = Node.new(val)
  end
  
  def insert(val)
    newnode = Node.new(val)
    temp = @head
    while temp.next
      temp = temp.next
    end
    temp.next = newnode    
  end
  
  def printlist
    temp = @head
    while temp
      puts temp.data
      temp = temp.next
    end
  end
  
  def delete(val)
    if @head.data == val
      @head = @head.next
      @head.prev = nil
      return
    end
    temp = @head
    while temp.next.data!=val
      temp = temp.next
    end
    temp.next = temp.next.next
    temp.next&.prev = temp
  end
end

dllist = D_linked_list.new(1)
dllist.insert(2)
dllist.insert(3)
dllist.insert(4)
dllist.insert(5)
dllist.insert(6)
dllist.insert(7)
dllist.insert(8)
dllist.insert(9)
dllist.insert(10)
dllist.printlist
dllist.delete(1)
dllist.delete(5)
dllist.delete(10)
dllist.printlist

