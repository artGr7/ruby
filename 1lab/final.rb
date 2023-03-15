def TASK8(arr) # Дан целочисленный массив. Необходимо найти индексы двух наименьших элементов массива.
  a = arr.min(2)
  return puts arr.index(a[0]).to_s + " #{arr.index(a[1])}"
end

def TASK20(arr) # Дан целочисленный массив. Необходимо найти все пропущенные числа.
  new_array = Array(arr[0]..arr[x.length-1])
  puts new_array - arr
end

def TASK32(arr) # Дан целочисленный массив. Найти количество его локальных максимумов.
  puts a.select.with_index {|el, i| i!=0 and i!=a.length-1 and a[i]>a[i+1] and a[i]>a[i-1]}.length
end

def TASK44(array) # Дан массив чисел. Необходимо проверить, чередуются ли в нем целые и вещественные числа.
  int = array[0].kind_of?(Integer) ? Integer : Float
  new_a = array.partition.with_index{|i,ind| ind.even?}
  new_a[0].all?{|i| i.kind_of? int} and new_a[1].all?{|i| i.kind_of? int}
end

def TASK56(arr) # Для введенного списка посчитать среднее арифметическое непростых элементов, которые больше, чем среднее арифметическое простых.
  require 'prime'
  prime_arr = arr.keep_if { |el| el.prime? == true}
  prime_avg = prime_arr.inject { |sum, el| sum + el }.to_f / arr.size
  noprime_arr = arr.keep_if {|el| el > prime_avg and el.prime? == false}
  puts noprime_arr.inject { |sum, el| sum + el }.to_f / arr.size
end

def complete(path)
  file = File.open(path)
  data = file.read.split.map {|el| el.to_i}
  puts "Выберите номер задания (8, 20, 32, 44, 56)"
  numb = STDIN.gets.to_i
  case numb
    when 8
      p TASK8(data)
    when 20
      p TASK20(data)
    when 32
      p TASK32(data)
    when 44
      p TASK44(data)
    when 56
      p TASK56(data)
    else
      puts "incorrect"
  end
end

path = ARGV[0]
complete(path)