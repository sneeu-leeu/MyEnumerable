def each
    i = 0
    while i < @list.length
    yield @list[i] if block_given?
    i += 1
end

# test cases 

list = MyList.new(1, 2, 3, 4)
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }
list.filter(&:even?)