require_relative '../linked_list'

class Stack < List
  protected :insert, :remove

  def push(val)
    insert(Node.new(val))
  end

  def pop
    remove(head)
  end
end
