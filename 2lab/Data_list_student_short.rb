load('Student_short.rb')
load('Data_list.rb')
load('Data_table.rb')
class Data_list_student_short < Data_list

  @@number = -1

  def get_data
    @@number+=1
    str=data[0]
    hash = str.split(', ').map{|el| el.split(': ')}.to_h
    attributes = []
    get_names.each {|el| attributes << hash[el]}
    Data_table.new([@@number]+attributes)
  end

  def get_names
    str=data[0]
    hash = str.split(', ').map{|el| el.split(': ')}.to_h
    hash.keys[1...hash.keys.length]
  end

end

short_guy2 = Student_short.from_s("initials: Кто Я. Т., phone: 89182338282, git: sddd", 1)
datalist_guy = Data_list_student_short.new([short_guy2.to_s])
datalist_guy2 = Data_list_student_short.new([short_guy2.to_s])
p datalist_guy.get_data.data
p datalist_guy2.get_data.data
