require "node"

class LinkedList::NodeTest < MiniTest::Test

  def setup
    @new_list = LinkedList::List.new
    @new_node = LinkedList::Node.new(:node_data)
    @new_node2 = LinkedList::Node.new(:node2_data)
  end

  def test_node_is_the_tail
    assert_equal nil, @new_node.next
  end

end
