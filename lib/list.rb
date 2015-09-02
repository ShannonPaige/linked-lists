require_relative "node"

module LinkedList
  class List
    attr_accessor :head

    def initialize(head = nil)
      @head = head
      # data of each node
      # next node of each node
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
      if @head == nil
        @head = node
      else
        here = @head
        count = 0
        until count == index
          placeholder = here
          here = here.next
          count +=1
        end
        node.next = here
        placeholder.next = node
      end
    end

    def includes?(node)
      here = @head
      includes = false
      until here.tail?
        if here.data == node
           includes = true
           break
        else
           here = here.next
         end
      end
      if here.data == node
         includes = true
      end
      includes
    end

    # def pop
    #   here = @head
    # counter < count
    #   while counter
    #     here = here.next
    #     count += 1
    #   end
    #
    #
    # end

    def count
      # count the number of elements in the list
      head
      if @head.nil? # => true
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
    #
    # def head
    #   # return the head value at the beginning of the list
    # end
    #
    # def tail
    #   # return the tail value at the end of the list
    #   # a tail is the node that has nil as its next node
    # end
    #
    # def find_by_index
    #   # find the value at a numeric position
    # end
    #
    # def find_by_value(value)
    #   # finds the position of the first occurrence of a value
    #   here = head
    #   while (here.data != value &&  here.next != nil)
    #     here = here.next
    #   if here.data == value
    #     # return the position
    #   else
    #     nil
    #   end
    # end
    #
    # def remove_by_index
    #   # removes the value at the specified index
    # end
    #
    # def remove_by_value
    #   # removes the first occurrence of the specified value
    # end
  end
end

new_list = LinkedList::List.new
new_node = LinkedList::Node.new(:node_data)
new_node2 = LinkedList::Node.new(:node2_data)
new_list.count # => 0
