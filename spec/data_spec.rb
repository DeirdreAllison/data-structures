require 'spec_helper'
require 'linked_list'

describe 'Linked list' do
  before { @ll = List.new }

  it 'should add new nodes' do
    original_size = @ll.size
    @ll.add(Node.new('M'))
    @ll.size.must_equal original_size + 1
  end

  it 'should correctly report size' do
    @ll.add(Node.new('N'))
    @ll.size.must_equal 1
  end

  it 'can be searched' do
    n = Node.new('P')
    @ll.add(n)
    @ll.search('P').must_equal n
  end

  it 'should remove nodes' do
    @ll.add(Node.new('Q'))
    to_delete = @ll.search('Q')
    @ll.remove(to_delete).must_equal 'Q'
    @ll.search('Q').must_equal nil
  end

end
