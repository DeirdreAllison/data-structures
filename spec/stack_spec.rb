require 'spec_helper'
require 'stack'
require 'linked_list'

describe Stack do
  before do
    s = Stack.new
    s.push(5)
    s.push(12)
    s.push(4)
    s
  end

end
