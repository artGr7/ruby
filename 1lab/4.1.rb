def TASK8(arr)
  a = arr.min(2)
  return puts arr.index(a[0]).to_s + " #{arr.index(a[1])}"
end