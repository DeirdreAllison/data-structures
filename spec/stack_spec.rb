require 'spec_helper'
require 'stack'
require 'linked_list'

describe Stack do
  before { @s = Stack.new }

  it 'should insert element' do
    @s.size.must_equal 0
    @s.push(3)
    @s.size.must_equal 1
  end

  it 'should remove element' do
    @s.push(1)
    @s.push(5)
    @s.size.must_equal 2
    @s.pop
    @s.size.must_equal 1
  end

end
