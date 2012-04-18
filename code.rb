a = [-7, 1, 5, 2, -4, 3, 0]

def equi(a)
  any = a.each_with_index.map do |element, index|
    ( sum(a[0, index]) == sum(a[index+1, a.size]) )
  end

  any.count

end

def sum(array)
  return 0 unless array
  return 0 if array.empty?
  return array.inject {|init, elem| init + elem}
end

equi(a)