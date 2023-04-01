class Student
  attr_accessor :id, :lastName, :name, :patronymic, :phone, :telegram, :email, :git

  def initialize(lastName: , name: , patronymic: , id: nil, phone: nil, telegram: nil, email: nil, git: nil)
    if phone != nil then
      check_phone(phone)
    self.id= id
    self.lastName= lastName
    self.name= name
    self.patronymic= patronymic
    self.phone= phone
    self.telegram= telegram
    self.email= email
    self.git= git
    end
  end

  def to_s
    "Id: #{@id}, Lastname: #{@lastName}, Name: #{@name}, Patronymic: #{@patronymic}, Phone: #{@phone}, Telegram #{@telegram}, Email #{@email}, Github link: #{@git}\n\n"
  end

  def check_phone(phone)
    if phone !=~ /\A\+?\d{11}\z/
      raise ArgumentError, "Неверный номер"
    end
  end

end
