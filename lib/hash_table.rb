require_relative '../lib/linked_list'

class HashTable
  attr_reader :table
  def initialize(size)
    @size = size
    @table = Array.new(size)
    i = 0
    while i < size
      table[i] = List.new
      i += 1
    end
  end

  def hash(key)
    i = 0
    h = 0
    while i < key.size
      key[i].ord
      h ^= (h << 5) + (h >> 2) + key[i].ord
      i += 1
    end
    h
  end

  def set(key, val)
    if key.is_a? String
      h = hash(key) % table.size
      n = Node.new(val, key, nil)
      table[h].add(n)
      return hash(key)
    else
      fail 'Expected string for key'
    end
  end

  def get(key)
    h = hash(key) % table.size
    n = table[h].search(key.reverse)
    n.val
  end
end
