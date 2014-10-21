require_relative '../lib/linked_list'

class Stack < List
  protected :add, :remove

  def push(val)
    insert(Node.new(val))
  end

  def pop
    remove(head)
  end
end
