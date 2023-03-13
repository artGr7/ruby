def TASK56(arr)
  require 'prime'
  prime_arr = arr.keep_if { |el| el.prime? == true}
  prime_avg = prime_arr.inject { |sum, el| sum + el }.to_f / arr.size
  noprime_arr = arr.keep_if {|el| el > prime_avg and el.prime? == false}
  puts noprime_arr.inject { |sum, el| sum + el }.to_f / arr.size
end