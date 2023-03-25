class Student
  attr_accessor :id, :lastName, :name, :patronymic, :phone, :telegram, :email, :git

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

end
