class BinaryTree
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def pre_order_search(node)
    if node
      puts node.value
      node.pre_order_search(node.left)
      node.pre_order_search(node.right)
    end
  end

  def in_order_search(node)
    if node
      node.in_order_search(node.left)
      puts node.value
      node.in_order_search(node.right)
    end
  end

  def post_order_search(node)
    if node
      node.post_order_search(node.left)
      node.post_order_search(node.right)
      puts node.value
    end
  end
end

class AppleExecs
  def initialize
    managers = BinaryTree.new('Tim')
    managers.left = BinaryTree.new('Jony')
    managers.right = BinaryTree.new('Phil')
    managers.left.left = BinaryTree.new('Dan')
    managers.left.right = BinaryTree.new('Katie')
    managers.left.right.left = BinaryTree.new('Peter')
    managers.left.right.right = BinaryTree.new('Andrea')
    managers.right.left = BinaryTree.new('Craig')
    managers.right.right = BinaryTree.new('Eddie')
    puts 'pre order search'
    managers.pre_order_search(managers)
    puts 'in order search'
    managers.in_order_search(managers)
    puts 'post order search'
    managers.post_order_search(managers)
  end
end

a = AppleExecs.new
prints a

