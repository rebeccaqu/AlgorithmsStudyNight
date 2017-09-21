class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  # PREPEND: add new node to start of list
  def prepend(value)
    node = Node.new(value)

    if @head.nil?
      @head = node
    else
      node.next_node = @head
      @head = node
    end
  end

  # APPEND: add new node to end of list

  # POP: removes last node in list

  # HEAD: returns first node in list

  # TAIL: returns last node in list

  # SIZE: returns total number of nodes in list

  # AT: returns node at a given index

  # CONTAINS: returns true if list contains a given value

  # FIND: returns index of node containing given data, or nil if not found

  # TO_S: represent your LinkedList objects as strings,
          # so you can preview them in the console. Format should be:
          # (data) -> (data) -> (data) -> nil

  # BONUS!

  # INSERT_AT: inserts node at given index

  # REMOVE_AT: removes node at given index

  # REVERSE: reverse the linked list

end

# Source: https://www.theodinproject.com/
