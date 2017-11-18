class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def head
    @head
  end

  def tail
    return nil if @head.nil?

    node = @head

    while node.next_node != nil
      node = node.next_node
    end

    node
  end

  def prepend(value)
    node = Node.new(value)

    if @head.nil?
      @head = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def append(value)
    node = Node.new(value)

    if @head.nil?
      @head = node
    else
      tail.next_node = node
    end
  end

  def pop
    return if @head.nil?

    if @head.next_node.nil?
      @head = nil and return
    else
      node = @head

      while node.next_node.next_node != nil
        node = node.next_node
      end

      node.next_node = nil
    end
  end

  def size
    node = @head
    count = 0

    while node != nil
      count += 1
      node = node.next_node
    end

    count
  end

  def at(index)
    return nil if @head.nil? || index > self.size - 1

    node = @head

    index.times do
      node = node.next_node
    end

    node
  end

  def contains(value)
    node = @head

    until node.nil?
      return true if node.value == value
      node = node.next_node
    end

    false
  end

  def find(value)
    return nil if !self.contains(value)

    node = @head
    node_index = 0

    until node.nil?
      return node_index if node.value == value

      node_index += 1
      node = node.next_node
    end

    node_index
  end

  def insert_at(index, value)
    return nil if @head.nil?

    return prepend(value) if index == 0
    return append(value) if index == size

    new_node = Node.new(value)
    before_node = @head

    index.times do
      before_node = before_node.next_node
    end

    new_node.next_node = before_node.next_node
    before_node.next_node = new_node
  end

  def remove_at(index)
    return nil if @head.nil?
    return pop if index == size - 1

    if index == 0
      @head = @head.next_node
    else
      current_node = @head
      previous_node = nil

      index.times do
        previous_node = current_node
        current_node = current_node.next_node
      end

      previous_node.next_node = current_node.next_node
    end
  end

  def to_s
    return "list is empty" if @head.nil?

    node = @head
    list = []

    while node != nil
      list << "(#{node.value})"
      node = node.next_node
    end

    list.join(" -> ") + " -> nil"
  end

  def reverse
    return nil if @head.nil?

    previous_node = nil
    current_node = @head

    while current_node != nil
      temp = current_node.next_node
      current_node.next_node = previous_node
      previous_node = current_node
      current_node = temp
    end

    @head = previous_node
  end
end
