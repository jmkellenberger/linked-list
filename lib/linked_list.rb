# Node in a linked list
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# Linked list data structure
class LinkedList
  attr_accessor :name, :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def to_s
    # Example: "( value ) -> ( value ) -> ( value ) -> nil"
  end

  def append(value)
    # adds a new node containing value to the end of the list
  end

  def prepend(value)
    # adds a new node containing value to the start of the list
  end

  def size
    # returns the total number of nodes in the list
  end

  def at(index)
    # returns the node at the given index
  end

  def pop
    # removes the last element from the list
  end

  def contains?(value)
    # returns true if the passed in value is in the list and otherwise returns false.
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found.
  end

  def insert_at(value, index)
    # inserts a new node with the provided value at the given index.
  end

  def remove_at(value, index)
    # that removes the node at the given index.
  end
end

