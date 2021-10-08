# frozen_string_literal: true

require_relative 'my_enumerable'

class MyList
  include Enumarebles

  def initialise(*arg)
    @list = arg
  end
end
