# Написать методы, которые находят минимальный, элементы, номер первого положительного элемента. Каждая операция в отдельном методе. 
# Решить задачу с помощью циклов(for и while).

def min(a)
  minimal = a[0]
  for i in a do
    if i<minimal
      minimal=i
    end
  end
  return minimal
end

def index_of_first_positive(a)
  for i in a do
    if (i>=0)
      break
    end
  end
  return (a.index(i))
end

a=[-2, -3, -3, 3, 4]
puts min(a).to_s + " #{index_of_first_positive a}"
