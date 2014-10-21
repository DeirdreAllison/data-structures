Node = Struct.new(:val, :nn)

class List
  attr_accessor :head, :count
  def add(node)
    node.nn = head
    @head = node
  end

  def size
    i = 0
    n = head
    while n
      i += 1
      n = n.nn
    end
    i
  end

  def search(input)
    n = head
    while n
      return n if n.val == input
      n = n.nn
    end
  end

  def to_s
    node_to_string = []
    n = head
    while n
      node_to_string << n.val.to_s
      n = n.nn
    end
    node_to_string.join(', ')
  end

  def remove(node)
    prev = nil
    n = head
    while n
      if n == node
        prev ? prev.nn = node.nn : @head = head.nn
        node.nn = nil
        return node.val
      end
      prev = n
      n = n.nn
    end
  end
end
