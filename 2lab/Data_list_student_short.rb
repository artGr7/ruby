load('Student_short.rb')
load('Data_list.rb')
load('Data_table.rb')
class Data_list_student_short < Data_list

  @@number = -1

  def get_data
    @@number+=1
    str=data[0]
    hash = str.split(', ').map{|el| el.split(': ')}.to_h
    Data_table.new([@@number]+[hash["Initials"]]+[hash["Contact"]]+ [hash["Github link"]])
  end

  def get_names
    ["ФИО","Контакт","Гит"]
  end
end
