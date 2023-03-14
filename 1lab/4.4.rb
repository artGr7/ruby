def TASK44(array)
  int = array[0].kind_of?(Integer) ? Integer : Float
  new_a = array.partition.with_index{|i,ind| ind.even?}
  new_a[0].all?{|i| i.kind_of? int} and new_a[1].all?{|i| i.kind_of? int}
end