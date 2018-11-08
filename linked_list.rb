require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)
    @head = Node.new(value, @head)
    return @head.data
  end

  def get_first
    if @head.nil?
      return @head
    else
      return @head.data
    end
  end

  def length
    if @head.nil?
      return 0
    else
      count = 1
      current = @head
      until current.next.nil?
        current = current.next
        count += 1
      end
      return count
    end
  end

  def add_last(value)
    new_node = Node.new(value)
    if @head.nil?
      # List is empty
      @head = new_node
    else
      # List is not empty
      current = @head
      until current.next.nil?
        current = current.next
      end
      current.next = new_node
    end
  end

  def get_last
    if @head.nil?
      return nil
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      return current.data
    end
  end

  def get_at_index(index)
    if @head.nil?
      return nil
    else
      count = 0
      current = @head

      while count < index
        if current.next.nil?
          # if there are less nodes that index
          return nil
        else
          current = current.next
          count += 1
        end
      end

      return current.data
      
    end
  end

end
