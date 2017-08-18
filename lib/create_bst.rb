class BSTNode
  attr_accessor :key, :left, :right
  @@counter = 0

  def initialize(key)
    @key = key
  end

  def counter
    @@counter
  end

  def insert(insert_key)
    @@counter += 1
    if insert_key <= key
      if left
        # puts "inserting left"
        left.insert(insert_key)
      else
        # puts "instantiating right"
        self.left = BSTNode.new(insert_key)
      end
    else
      if right
        # puts "inserting left"
        right.insert(insert_key)
      else
        # puts "instantiating left"
        self.right = BSTNode.new(insert_key)
      end
    end
  end
end

def createBST(keys)
  tree = nil
  keys.each do |key|
    if tree
      tree.insert(key)
      puts tree.counter
    else
      tree = BSTNode.new(key)
      puts tree.counter
    end
  end
end
