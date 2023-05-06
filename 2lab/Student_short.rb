load('Abstract_student.rb')
load('student.rb')
class Student_short < Abstract_student
  attr_reader :id, :initials, :git, :contact
  def initialize(id:, initials:, git:, contact:)
    @id = id
    @initials = initials
    @git = git
    @contact = contact
  end

  def self.from_student(student)
    Student_short.new(id: student.id, initials: "#{student.lastName} #{student.name[0]}. #{student.patronymic[0]}.", git: student.git, contact: student.random_contact)
  end

  def self.some_contact(hash)
    if hash["phone"] then return hash["phone"] end
    if hash["email"] then return hash["email"] end
    if hash["telegram"] then return hash["telegram"] end
    return " "
  end

  def self.from_s(str, id)
    hash = str.split(', ').map{|el| el.split(': ')}.to_h
    Student_short.new(id: id, initials: hash["initials"], git: hash["git"], contact: self.some_contact(hash))
  end
end
