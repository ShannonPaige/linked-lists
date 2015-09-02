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

  def test_includes?
    @new_list.append(@new_node)
    @new_list.append(@new_node2)
    assert @new_list.includes?(:node2_data)
    refute @new_list.includes?(:node3_data)
    # includes? gives back true or false whether the supplied value is in the list
  end

  def test_pop
    skip
    # pop an element from the end of the list
  end

  def test_count
    skip
    # count the number of elements in the list
  end

  def test_head
    skip
    # return the head value at the beginning of the list
  end

  def test_tail
    skip
    # return the tail value at the end of the list
  end

  def test_find_by_index
    skip
    # find the value at a numeric position
  end

  def test_find_by_value
    skip
    # finds the position of the first occurrence of a value
  end

  def test_remove_by_index
    skip
    # removes the value at the specified index
  end

  def test_remove_by_value
    skip
    # removes the first occurrence of the specified value
  end
end
