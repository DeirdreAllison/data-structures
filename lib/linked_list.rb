class Node
  Node = Struct.new(:val, :nn)
  ll = Node.new(A, l)
  c = ll
  # to print
  while c
    puts c.val
    c = c.nn
  end

  class List
    attr_accessor :head, :count
    def add(node)
      node.nn = head
      @head = node
    end
  end
end
