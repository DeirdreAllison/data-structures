class DoubleNode
  attr_accessor :val, :next_node, :prev_node
  def initialize(val)
    @val = val
    @next_node = nil
    @prev_node = nil
  end
end

class DoubleList
  attr_accessor :head
  def add_at_head(node)
    node.next_node = head
    head.prev_node = node if head
    @head = node
  end

  def size
    i = 0
    n = head
    while n
      i += 1
      n = n.next_node
    end
    i
  end

  def search(input)
    n = head
    while n
      return n if n.val == input
      n = n.next_node
    end
  end

  def to_s
    node_to_string = []
    n = head
    while n
      node_to_string << n.val.to_s
      n = n.next_node
    end
    node_to_string.join(', ')
  end

  def find_and_remove(val)
    n = head
    prev = nil
    while n
      if n.val == val
        prev ? prev.next_node = n.next_node : @head = n.next_node
        n.next_node.prev_node = prev if n.next_node
        n.next_node = nil
        n.prev_node = nil
        return val
      end
      prev = n
      n = n.next_node
    end
  end

  def find_and_remove_duplicates(node)
    n = node.next_node
    prev = node
    while n
      if n.val == node.val
        prev.next_node = n.next_node
        n.next_node.prev_node = prev if n.next_node
        n.next_node = nil
        n.prev_node = nil
        n = prev
      end
      prev = n
      n = n.next_node
    end
  end

  def remove_all_duplicates(node)
    n = node
    while n
      find_and_remove_duplicates(n)
      n = n.next_node
    end
  end
end

l = DoubleList.new
200.times do
  n = DoubleNode.new(rand(100))
  l.add_at_head(n)
end
puts l
l.remove_all_duplicates(l.head)
puts l
