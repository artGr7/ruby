puts "Привет, " + ARGV[0]
puts "Любимый язык?"
language = STDIN.gets.chop.to_s
if language == "Ruby" then
  puts "подлиза..."
else
  puts "Скоро будет Ruby"
end
puts "Введите команду Ruby:"
rub_c = STDIN.gets.chop.to_s
puts "Введите команду ОС:"
os_c = STDIN.gets.chop.to_s
system(os_c)
eval(rub_c)