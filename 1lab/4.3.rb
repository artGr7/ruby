def TASK32(arr)
  puts a.select.with_index {|el, i| i!=0 and i!=a.length-1 and a[i]>a[i+1] and a[i]>a[i-1]}.length
end