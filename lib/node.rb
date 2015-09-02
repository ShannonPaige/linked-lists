module LinkedList
  class Node
    attr_accessor :data
    attr_accessor :next

    def initialize(data)
      @data = data
      @next = nil
    end

    def next_node(node)
      # uses the pointer to go to the next node
    end

    def tail?
      @next.nil?
    end

  end
end
