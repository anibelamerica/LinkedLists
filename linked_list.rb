require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)

  end

  def get_first

  end

  def length
    return 0
  end

  def add_last(value)
    newNode = Node.new(value)
    if @head.nil?
      # List is empty
      @head = newNode
    else
      # List is not empty
      current = @head
      until current.next.nil?
        current = current.next
      end
      current.next = newNode
    end
  end

  def get_last

  end

  def get_at_index(index)

  end

end
