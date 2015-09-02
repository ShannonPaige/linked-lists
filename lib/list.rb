require_relative 'node'

module LinkedList
  class List
    attr_accessor :head

    def initialize(head = nil)
      @head = head
    end

    def append(node)
      if @head.nil?
        @head = node
      else
        here = @head
        until here.tail?
          here = here.next
        end
        here.next = node
      end
    end

    def prepend(node)
      if @head.nil?
        @head = node
      else
        node.next = @head.next
        @head = node
      end
    end

    def insert(node, index)
      if @head.nil?
        @head = node
      else
        here = @head
        count = 0
        until count == index
          placeholder = here
          here = here.next
          count += 1
        end
        node.next = here
        placeholder.next = node
      end
    end

    def includes?(node)
      if @head.nil?
        includes = false
      else
        here = @head
        includes = false
        until here.tail?
          while here.data != node
            here.data
            here = here.next
          end
        end
        if here.data == node
          includes = true
        end
      end
      includes
    end

    def pop
      here = @head
      counter = 1
      while counter < count - 1
        here = here.next
        counter += 1
      end
      here.next = nil
    end

    def count
      if @head.nil?
        counter = 0
      else
        here = @head
        counter = 1
        until here.tail?
          here = here.next
          counter += 1
        end
      end
      counter
    end

    def head_value
      @head.data
    end

    def tail_value
      here = @head

        here = here.next until here.tail?
      here.data
    end

    def find_by_index(index)
      here = @head
      counter = 0
      until counter == index
        here = here.next
        counter += 1
      end
      here.data
    end

    def find_by_value(value)
      here = @head
      counter = 0
      until here.data == value
        here = here.next
        counter += 1
      end
      counter
    end

    def remove_by_index(index)
      here = @head
      counter = 0
      until counter == index
        placeholder = here
        here = here.next
        counter += 1
      end
      placeholder.next = here.next
      here.next = nil
    end

    def remove_by_value(value)
      here = @head
      until here.data == value
        placeholder = here
        here = here.next
      end
      placeholder.next = here.next
      here.next = nil
    end

    def distance(node_one, node_two)
      point_a = find_by_value(node_one.data)
      point_b = find_by_value(node_two.data)
      (point_a - point_b).abs
    end
  end
end

new_list = LinkedList::List.new
new_node = LinkedList::Node.new(:node_data)
new_node2 = LinkedList::Node.new(:node2_data)
new_list.append(new_node)
new_list.includes?(:node_data) # => true
