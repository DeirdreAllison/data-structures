Node = Struct.new(:val, :nn)

  class List
    attr_accessor :head, :count
    def insert(node)
      count += 1
      node.nn = @head
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

    def search(val)
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
