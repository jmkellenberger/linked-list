# Node in a linked list
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_s
    "( #{@value} ) -> #{@next_node}"
  end
end

# Linked list data structure
class LinkedList
  include Enumerable
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def to_s
    "#{@head}nil"
  end

  def each
    return nil if head.nil?

    node = @head
    until node.nil?
      yield node
      node = node.next_node
    end
  end

  def push(node)
    if @head.nil?
      @head = node
    else
      @tail.next_node = node
    end
    @tail = node
  end

  def unshift(node)
    if @head.nil?
      @tail = node
    else
      node.next_node = @head
    end
    @head = node
  end

  def shift
    return nil if head.nil?

    node = @head
    @head = @head.next_node
    node
  end

  def size
    return 0 if @head.nil?
    return 1 if @head == @tail

    size = 0
    each { size += 1 }
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

new_list = LinkedList.new

range = %w[A B C D E F G H I J K L M N O P]

range.each do |letter|
  new_list.push(Node.new(letter))
  puts "Adding #{letter} to list"
  puts new_list.size
end
