class Student
  attr_reader :id, :lastName, :name, :patronymic, :phone, :telegram, :email, :git

  def initialize(lastName: , name: , patronymic: , id: nil, phone: nil, telegram: nil, email: nil, git: nil)
    self.id= id
    self.lastName= lastName
    self.name= name
    self.patronymic= patronymic
    self.phone= phone
    self.telegram= telegram
    self.email= email
    self.git= git
    end

  def to_s
    "Id: #{@id}, Lastname: #{@lastName}, Name: #{@name}, Patronymic: #{@patronymic}, Phone: #{@phone}, Telegram #{@telegram}, Email #{@email}, Github link: #{@git}"
  end

  def self.check_phone(phone)
    phone.match /\A\+?\d{11}\z/
  end

  def phone=(phone)
    raise ArgumentError,"Invalid phone number" if !phone.nil?&&Student.check_phone(phone)==nil
    @phone = phone
  end

  def self.id_valid?(id)
    String(id).match /^[0-9]+$/
  end

  def id=(id)
    raise ArgumentError,"Invalid ID" if !id.nil?&&!Student.id_valid?(id)
    @id=id
  end

  def self.name_valid?(name)
    name.match /^[А-Я][^А-Я\d]+$/
  end

  def name=(name)
    raise TypeError, "Bad name: #{name}" if !name.nil?&&!Student.name_valid?(name)
    @name=name
  end

  def lastName=(lastName)
    raise TypeError, "Bad name: #{lastName}" if !lastName.nil?&&!Student.name_valid?(lastName)
    @lastName = lastName
  end

  def patronymic=(patronymic)
    raise TypeError, "Bad name: #{patronymic}" if !patronymic.nil?&&!Student.name_valid?(patronymic)
    @patronymic = patronymic
  end

  def self.git_valid?(git)
    git.match /^[\d\w]+$/
  end

  def git=(git)
    raise TypeError, "Bad git: #{git}" if !git.nil?&&!Student.git_valid?(git)
    @git = git
  end

  def self.telegram_valid?(telegram)
    telegram.match /^[\w\d\s]+$/
  end

  def telegram=(telegram)
    raise TypeError, "Bad telegram: #{telegram}" if !telegram.nil?&&!Student.telegram_valid?(telegram)
    @telegram = telegram
  end

  def self.email_valid?(email)
    email.match /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  end

  def email=(email)
    raise TypeError, "Bad mail: #{email}" if !email.nil?&&!Student.email_valid?(email)==nil
    @email = email
  end

  def validate_git?
    git!=nil
  end

  def validate_contacts?
    self.phone!=nil or self.email!=nil or self.telegram!=nil
  end

  def validate
    validate_contacts? and validate_git?
  end

  def set_contacts(phone: nil, telegram: nil, email: nil)
    self.phone= phone
    self.telegram= telegram
    self.email= email
  end

  def self.from_s(str)
    hash = str.split(', ').map{|el| el.split(': ')}.to_h
    Student.new(lastName: hash["lastName"], name: hash["name"], patronymic: hash["patronymic"], phone: hash["phone"], telegram: hash["telegram"], email: hash["email"], git: hash["git"])
  end

  def getInfo
    "Имя: #{@lastName} #{@name[0]}. #{@patronymic[0]}. Git: #{@git} Phone: #{@phone} telegram: #{@telegram} email: #{@email}"
  end

end

first_guy = Student.new(lastName: "Кто", name: "Яя", patronymic: "Ты", phone: "89182338282", git: "sddsd")
puts first_guy.getInfo



#def getInfo
#  if validate_git?
#    "Имя: #{@lastName} #{@name[0]}. #{@patronymic[0]}. Git: #{@git} Phone: #{@phone} telegram: #{telegram} email: #{@email}"
#  else
#    if validate_contacts?
#      "Имя: #{@lastName} #{@name[0]}. #{@patronymic[0]}. Phone: #{@phone} telegram: #{telegram} email: #{@email}"
#    else
#      "no info about #{@lastName} #{name[0]}. #{patronymic[0]}."
#    end
#  end
#end
