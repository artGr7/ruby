def two_min(arr) # Дан целочисленный массив. Необходимо найти индексы двух наименьших элементов массива.
  a = arr.min(2)
  arr.index(a[0]).to_s + " #{arr.index(a[1]).to_s}"
end

def missed_nums(arr) # Дан целочисленный массив. Необходимо найти все пропущенные числа.
  new_array = Array(arr.min..arr.max)
  new_array - arr
end

def local_max(arr) # Дан целочисленный массив. Найти количество его локальных максимумов.
  arr.select.with_index {|el, i| i!=0 and i!=arr.length-1 and arr[i]>arr[i+1] and arr[i]>arr[i-1]}.length
end

def flo_int(array) # Дан массив чисел. Необходимо проверить, чередуются ли в нем целые и вещественные числа.
  int = array[0].kind_of?(Integer) ? Integer : Float
  new_a = array.partition.with_index{|i,ind| ind.even?}
  new_a[0].all?{|i| i.kind_of? int} and new_a[1].all?{|i| i.kind_of? int}
end

def meanprime(arr) # Для введенного списка посчитать среднее арифметическое непростых элементов, которые больше, чем среднее арифметическое простых.
  require 'prime'
  prime_arr = arr.keep_if { |el| el.prime? == true}
  prime_avg = prime_arr.inject { |sum, el| sum + el }.to_f / arr.size
  noprime_arr = arr.keep_if {|el| el > prime_avg and el.prime? == false}
  noprime_arr.inject { |sum, el| sum + el }.to_f / arr.size
end

def complete(path)
  file = File.open(path)
  data = file.read.split.map {|el| el.to_i}
  puts "Выберите номер задания (8, 20, 32, 44, 56)"
  numb = STDIN.gets.to_i
  case numb
    when 8
      p two_min(data)
    when 20
      p missed_nums(data)
    when 32
      p local_max(data)
    when 44
      p flo_int(data)
    when 56
      p meanprime(data)
    else
      puts "Ты где тут нашел #{numb}???"
  end
end

path = ARGV[0]
complete(path)
