# Node in a linked list
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_s
    @value.to_s
  end
end

# Linked list data structure
class LinkedList
  attr_accessor :name
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def to_s
    return 'nil' if @head.nil?

    string = ''
    node = @head
    until node.nil?
      string += "( #{node} ) -> "
      node = node.next_node
    end
    string += 'nil'
    string
  end

  def append(node)
    if @head.nil?
      @head = node
    else
      @tail.next_node = node
    end
    @tail = node
  end

  def prepend(node)
    if @head.nil?
      @tail = node
    else
      node.next_node = @head
    end
    @head = node
  end

  def size
    return 0 if @head.nil?
    return 1 if @head == @tail

    size = 0
    node = @head
    until node.nil?
      node = node.next_node
      size += 1
    end
    size
  end

  def at(index)
    # returns the value found at index, or if no node exists
    return nil if @head.nil? || index > size

    count = 0
    node = @head
    while count < index
      node = node.next_node
      count += 1
    end
    node
  end

  def pop
    # removes the last element from the list
    return nil if head.nil?

    old_tail = @tail
    new_tail = at(size - 2)
    new_tail.next_node = nil
    @tail = new_tail

    old_tail
  end

  def contains?(value)
    # returns true if the passed in value is in the list and otherwise returns false.
    node = @head
    until node.nil?
      return true if node.value == value

      node = node.next_node
    end
    false
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found.
    return nil unless contains?(value)
    return 0 if @head.value == value

    count = 0
    node = @head
    until node.value == value
      node = node.next_node
      count += 1
    end
    count
  end

  def insert_at(node, index)
    # inserts a new node with the provided value at the given index.
  end

  def remove_at(node, index)
    # that removes the node at the given index.
  end
end
