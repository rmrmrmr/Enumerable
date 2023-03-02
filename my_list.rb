require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each
    yield @list
  end

end

list = MyList.new(1, 2, 3, 4)

list.each { |item| puts item }

list.all? { |item| item < 5 }
list.all? { |item| item > 5 }

list.any? { |item| item == 2 }
list.any? { |item| item == 5 }

list.filter(&:even?)