class Student
  attr_accessor :id, :lastName, :name, :patronymic, :phone, :telegram, :email, :git

  def initialize(lastName, name, patronymic, id: nil, phone: nil, telegram: nil, email: nil, git: nil)
    @id = id
    @lastName = lastName
    @name = name
    @patronymic = patronymic
    @phone = phone
    @telegram = telegram
    @email = email
    @git = git
  end

  def to_s
    puts "Id: #{@id}, Lastname: #{@lastName}, Name: #{@name}, Patronymic: #{@patronymic}, Phone: #{@phone}, Telegram #{@telegram}, Email #{@email}, Github link: #{@git}\n\n"
  end

end
