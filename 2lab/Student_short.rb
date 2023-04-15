class Student_short
  attr_reader :id, :git, :initials, :contact

  def initialize(student)
    self.id = student.id
    self.initials = student.short_name
    self.git = student.git
    self.contact = student.set_contacts(phone: student.phone, mail: student.email, tme: student.telegram)
  end

  def self.from_s(str)
    hash = str.split(', ').map{|el| el.split(': ')}.to_h
    Student_short.new(initials: hash["initials"], git: hash["git"], contact: hash["contact"])
  end

  def to_s
    "id: #{@id}, name: #{@initials}, contact: #{@contact}, git: #{@git}"
  end
