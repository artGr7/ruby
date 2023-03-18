# Написать программу, которая принимает как аргумент два значения. 
# Первое значение говорит, какой из методов задачи 1 выполнить, второй говорит о том, откуда читать список аргументом должен быть написан адрес файла. 
# Далее необходимо прочитать массив и выполнить метод.

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

def action(num, path)
  file = File.open(path)
  arr = file.read.split.map {|element| elements.to_i}
  if (num.to_i == 1)
    puts (min(arr))
  else
    puts (index_of_first_positive(arr))
  end
end

num = ARGV[0]
path = ARGV[1]
action(num,path)
