require_relative '../lib/linked_list'

class ListQueue < List
  protected :add, :remove

  def enqueue(val)
    add(Node.new(val))
  end

  def dequeue
    if @head.nil?
      fail 'EmptyStackError'
    else
      n = head
      n = n.nn while n.nn
      remove n
    end
  end
end
