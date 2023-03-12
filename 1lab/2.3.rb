def the_divisor_of_a_number_that_is_mutually_prime_with_the_number_of_digits(x)
  def amount_of_digits(x)
    amount=0
    while (x!=0)
      amount+=1
      x/=10
    end
    return amount
  end
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
  a=1
  while (a<x)
    if (x%a==0 and are_nums_mutually_prime?(a, amount_of_digits(x))==true)
      puts(a)
      a+=1
    else
      a+=1
    end
  end
end


puts("Введите число:")
x = gets.chomp.to_i
puts("Делители числа, являющиеся взаимно простыми с
наибольшим количеством цифр данного числа: ")
puts the_divisor_of_a_number_that_is_mutually_prime_with_the_number_of_digits(x)
