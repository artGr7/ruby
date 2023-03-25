class Student
  attr_accessor :id, :lastName, :name, :patronymic, :phone, :telegram, :email, :git

  def initialize(lastName, name, patronymic)
    @id
    @lastName = lastName
    @name = name
    @patronymic = patronymic
    @phone
    @telegram
    @email
    @git
  end

  def megaprint
    puts "Id: #{@id}, Lastname: #{@lastName}, Name: #{@name}, Patronymic: #{@patronymic}, Phone: #{@phone}, Telegram #{@telegram}, Email #{@email}, Github link: #{@git}\n\n"
  end

end
