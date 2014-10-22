require 'spec_helper'
require 'queue'
require 'linked_list'

describe ListQueue do
  before { @q = ListQueue.new }

  it 'should add element to queue' do
    @q.size.must_equal 0
    @q.enqueue(3)
    @q.size.must_equal 1
  end

  it 'should remove element from queue' do
    @q.enqueue(1)
    @q.enqueue(5)
    @q.size.must_equal 2
    @q.dequeue
    @q.size.must_equal 1
  end

  it 'should return correct length' do
    @q.enqueue(1)
    @q.enqueue(5)
    @q.size.must_equal 2
    @q.dequeue
    @q.size.must_equal 1
  end

  # it 'should give empty queue error' do
  #   @q.dequeue.must_raise EmptyStackError
  # end

end
