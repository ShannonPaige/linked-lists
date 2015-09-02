require "list"
require "node"

class LinkedList::ListTest < MiniTest::Test

  def setup
    @new_list = LinkedList::List.new
    @new_node = LinkedList::Node.new(:node_data)
    @new_node2 = LinkedList::Node.new(:node2_data)
    @new_node3 = LinkedList::Node.new(:node3_data)
  end

  def test_empty_list_expects_nil_to_be_the_head
    assert_equal nil, @new_list.head
  end

  def test_append_assigns_new_node_to_head_of_empty_list
    @new_list.append(@new_node)
    assert_equal @new_node, @new_list.head
  end

  def test_appends_a_new_element_to_a_list
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    assert_equal @new_node2, @new_node.next
  end

  def test_prepend_a_new_node_to_a_list
    @new_list.append(@new_node)
    @new_list.prepend(@new_node2)
    assert_equal @new_node2, @new_list.head
    # prepend an element at the beginning of the list
  end

  def test_insert
    # an element at an arbitrary position in the list
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    @new_list.insert(@new_node3, 1)
    assert_equal @new_node3, @new_node.next
  end

  def test_decides_if_list_includes_a_data_value
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    assert @new_list.includes?(:node2_data)
    refute @new_list.includes?(:node3_data)
  end

  def test_pops_an_element_from_the_end_of_the_list
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    @new_list.pop
    assert_equal nil, @new_node.next
  end

  def test_counts_the_number_of_nodes_in_the_list
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    assert_equal 2, @new_list.count
  end

  def test_returns_data_value_from_head_node
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    assert_equal :node_data, @new_list.head_value
  end

  def test_tail
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    assert_equal :node2_data, @new_list.tail_value
  end

  def test_return_data_from_node_at_given_index
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    @new_list.append(@new_node3)
    assert_equal :node2_data, @new_list.find_by_index(1)
  end

  def test_return_index_of_node_with_first_given_value
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    @new_list.append(@new_node3)
    assert_equal 1, @new_list.find_by_value(:node2_data)
  end

  def test_remove_node_at_given_index
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    @new_list.append(@new_node3)
    @new_list.remove_by_index(1)
    assert_equal @new_node3, @new_node.next
  end

  def test_remove_by_value
    skip
    # removes the first occurrence of the specified value
  end
end
