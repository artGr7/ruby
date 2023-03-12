def sum_of_digits_div3(x)
  sum=0
  while (x!=0)
    if ((x%10)%3==0)
      sum+=x%10
      x/=10
    else
      x/=10
    end
  end
  return sum
end

puts("Введите число:")
x = gets.chomp.to_i
puts("Cумма цифр числа, делящихся на 3:")
puts(sum_of_digits_div3(x))