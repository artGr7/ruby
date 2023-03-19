puts "Привет, " + ARGV[0]
puts "Любимый язык?"
language = STDIN.gets.chop.to_s
if language == "Ruby" then
  puts "подлиза..."
else
  puts "Скоро будет Ruby"
end
