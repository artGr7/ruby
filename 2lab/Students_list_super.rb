require_relative 'Students_list_JSON'
require_relative 'Students_list_YAML'
require_relative 'student'
require_relative 'Student_short'
require_relative 'data_list'


class Students_list_super

  def initialize(type_class)
    self.students = []
    self.type_class = type_class
  end

  def read_file(file_path)
    raise ArgumentError, 'File not found' unless File.exist?(file_path)
    list_hash = type_class.list_hash_from_str(File.read(file_path))
    self.students = list_hash.map {|st|
     Student.new(lastName: st[:last_name],name: st[:first_name], patronymic: st[:patronymic], id: st[:id], phone: st[:phone], telegram: st[:telegram],email: st[:email], git: st[:git])
    }
  end

  def write_to_file(file_path)
    list_hash = students.map{|stud|stud.to_hash}
    File.write(file_path, type_class.list_hash_to_str(list_hash))
  end

  def get_student_by_id(id)
    students.find {|st| st.id.to_i==id}
  end

  def get_k_n_student_short_list(page, n, data_list: nil)
    page_list = students[(page-1)*n, n].map{|st| Student_short.from_student(st)}
    return Data_list.new(page_list) if data_list.nil?
    data_list.append(page_list)
  end

  def sorted_by_name
    students.sort_by do |st|
      [st.lastName,st.name]
    end
  end

  def add_student(student)
    begin
      student.id = students.sort_by(&:id).last.id+1
    rescue
      student.id = 1
    end
    students << student
  end

  def replace_student_by_id(student, st_id)
    id_student = students.find_index{|st| st.id==st_id}
    students[id_student] = student
  end

  def delete_student_by_id(st_id)
    students.delete_if {|st| st.id.to_i==st_id}
  end

  def get_student_count
    students.size
  end

  protected
  def students=(students)
    @students = students
  end

  def students
    @students
  end

  def type_class=(type_class)
    @type_class = type_class
  end

  def type_class
    @type_class
  end

end

# a = Students_list_super.new(Students_list_JSON)
# a.read_file("2 лаба/sds.json")
# a.write_to_file("2 лаба/sd.json")
# puts a.sorted_by_name
