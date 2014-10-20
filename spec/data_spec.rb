require 'spec_helper'
require 'sort'

describe Sorting do
  it 'should return a sorted array using insertion sort' do
    Sorting.new.insertion_sort([3, 7, 23, 1]).must_equal [1, 3, 7, 23]
  end

end
