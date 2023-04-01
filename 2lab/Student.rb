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
    "Id: #{@id}, Lastname: #{@lastName}, Name: #{@name}, Patronymic: #{@patronymic}, Phone: #{@phone}, Telegram #{@telegram}, Email #{@email}, Github link: #{@git}\n\n"
  end

  def self.check_phone(phone)
    phone.match /^\+?[7,8]{1}\-\d{3}\-\d{3}\-\d{2}\-\d{2}$/
  end

  def phone=(phone)
    raise ArgumentError,"Invalid phone number" if !phone.nil?&&!Student.check_phone(phone)
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
    name.match /^[A-Z][^A-Z\d]+$/
  end

  def name=(name)
    raise TypeError, "Bad name: #{name}" if !name.nil?&&!Student.name_valid?(name)
    @name=name
  end

  def lastName=(lastName)
    raise TypeError, "Bad name: #{lastName}" if !lastName.nil?&&!Student.name_valid?(lastName)
    @lastName = lastName
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
    email.match /^[\d\w]+\@gmail.com$/
  end

  def email=(email)
    raise TypeError, "Bad mail: #{email}" if !email.nil?&&!Student.email_valid?(email)
    @email = email
  end
end
