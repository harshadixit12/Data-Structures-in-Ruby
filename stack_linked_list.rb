#Stack with Linked List
class Node
  attr_reader :data
  attr_accessor :next
  
  def initialize(x)
    @data = x
    @next = nil
  end

end

class Stack
  def initialize()
    @top = -1
    @head = nil
  end

  def push(x)
    if @top<0
      @head = Node.new(x)
      @top+=1
      return true
    else
      temp = Node.new(x)
      temp.next = @head
      @head = temp
      @top+=1
      return true
  	end
  end
  
  def peek()
    return @head.data
  end

  def empty()
    return (@top<0)
  end
  
  def pop()
    if @top<0
      puts "Stack Underflow"
      return -1
    else
      temp = @head.data
      @head = @head.next
      @top-=1
      return temp
    end
  end
end


stk = Stack.new()
puts stk.empty()
stk.push(1)
stk.push(2)
stk.push(3)
stk.push(4)
stk.push(5)
puts stk.peek()
stk.push(6)
puts stk.pop()
puts stk.pop()
puts stk.pop()
puts stk.pop()
puts stk.pop()
puts stk.pop()
puts stk.empty()
