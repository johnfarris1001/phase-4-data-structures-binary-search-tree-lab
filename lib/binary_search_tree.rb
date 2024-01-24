require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    # your code here
    if self.root == nil
      return nil
    end
    current = self.root
    while current.value != value
      if current.value < value
        current = current.right
      else
        current = current.left
      end
      return nil if current == nil
    end
    current
  end

  def insert(value)
    # your code here
    if self.root == nil
      self.root = Node.new(value)
    end
  end

end 
