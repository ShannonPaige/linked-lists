require "list"
require "node"

class LinkedList::ListTest < MiniTest::Test

  def setup
    @test_list = LinkedList::List.new
    @node1 = LinkedList::Node.new(:node_data)
    @node2 = LinkedList::Node.new(:node2_data)
    @node3 = LinkedList::Node.new(:node3_data)
  end

  def test_empty_list_expects_nil_to_be_the_head
    assert_equal nil, @test_list.head
  end

  def test_append_assigns_new_node_to_head_of_empty_list
    @test_list.append(@node1)
    assert_equal @node1, @test_list.head
  end

  def test_appends_a_new_element_to_a_list
    @test_list.append(@node1)
    @test_list.append(@node2)
    assert_equal @node2, @node1.next
  end

  def test_prepend_a_new_node_to_a_list
    @test_list.append(@node1)
    @test_list.prepend(@node2)
    assert_equal @node2, @test_list.head
    # prepend an element at the beginning of the list
  end

  def test_insert
    # an element at an arbitrary position in the list
    @test_list.append(@node1)
    @test_list.append(@node2)
    @test_list.insert(@node3, 1)
    assert_equal @node3, @node1.next
  end

  def test_returns_that_empty_array_includes_no_data
    refute @test_list.includes?(:node3_data)
  end

  def test_decides_if_list_includes_a_data_value
    @test_list.append(@node1)
    @test_list.append(@node2)
    assert @test_list.includes?(:node2_data)
    refute @test_list.includes?(:node3_data)
  end

  def test_pops_an_element_from_the_end_of_the_list
    @test_list.append(@node1)
    @test_list.append(@node2)
    @test_list.pop
    assert_equal nil, @node1.next
  end

  def test_counts_the_number_of_nodes_in_the_list
    @test_list.append(@node1)
    @test_list.append(@node2)
    assert_equal 2, @test_list.count
  end

  def test_returns_data_value_from_head_node
    @test_list.append(@node1)
    @test_list.append(@node2)
    assert_equal :node_data, @test_list.head_value
  end

  def test_returns_data_value_from_tail_node
    @test_list.append(@node1)
    @test_list.append(@node2)
    assert_equal :node2_data, @test_list.tail_value
  end

  def test_return_data_from_node_at_given_index
    @test_list.append(@node1)
    @test_list.append(@node2)
    @test_list.append(@node3)
    assert_equal :node2_data, @test_list.find_by_index(1)
  end

  def test_return_index_of_node_with_first_given_value
    @test_list.append(@node1)
    @test_list.append(@node2)
    @test_list.append(@node3)
    assert_equal 1, @test_list.find_by_value(:node2_data)
  end

  def test_remove_node_at_given_index
    @test_list.append(@node1)
    @test_list.append(@node2)
    @test_list.append(@node3)
    @test_list.remove_by_index(1)
    assert_equal @node3, @node1.next
  end

  def test_remove_by_value
    @test_list.append(@node1)
    @test_list.append(@node2)
    @test_list.append(@node3)
    @test_list.remove_by_value(:node2_data)
    assert_equal @node3, @node1.next
  end

  def test_returns_the_distance_between_two_nodes
    @test_list.append(@node1)
    @test_list.append(@node2)
    @test_list.append(@node3)
    assert_equal 2, @test_list.distance(@node1, @node3)
  end
end
