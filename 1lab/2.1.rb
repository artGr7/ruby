# Найти количество чисел, взаимно простых с заданным.

def num_of_mutually_prime_x_and_y(x)
  def are_nums_mutually_prime?(x, y)
    a=1 # a - делитель
    num=0 # num - количество делителей
    while (a<=x)
      if (x%a==0 and y%a==0)
        num+=1
        a+=1
      else
        a+=1
      end
    end
    if (num==1)
      return true
    else
      return false
    end
  end
  y=0 # y - второе число
  count=0 # count - количество взаимно простых х и y
  while (y<x)
    if (are_nums_mutually_prime?(x, y)==true)
      count+=1
      y+=1
    else
      y+=1
    end
  end
  return count
end

puts("Введите число:")
x = gets.chomp.to_i
puts("Количество взиаимно простых чисел с заданным:")
puts num_of_mutually_prime_x_and_y(x)
