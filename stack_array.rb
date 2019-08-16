#Stack with array

class Stack
  def initialize(n)
    @size = n
    @array=Array.new(n)
    @top = -1
  end

  def push(x)
    if(@top>=@size-1)
      puts "Stack Overflow"
      return false
    else
      @top+=1
      @array[@top] = x 
      return true	
    end
  end

  def pop()
    if @top == -1
      puts "Stack Underflow"
      return -1
    else
      @top-=1
      return @array[@top+1]
    end
  end

  def peek()
    if(@top>=0)
      return @array[@top]
    else
      puts"Empty stack"
      return -1
    end
  end

  def empty()
    return (@top<0)
  end	
end

stk = Stack.new(5)
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



