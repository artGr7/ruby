class Student
  attr_accessor :id, :lastName, :name, :patronymic, :telegram, :email, :git
  attr_reader :phone
  

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
  end

  def to_s
    "Id: #{@id}, Lastname: #{@lastName}, Name: #{@name}, Patronymic: #{@patronymic}, Phone: #{@phone}, Telegram #{@telegram}, Email #{@email}, Github link: #{@git}\n\n"
  end

  def self.check_phone(phone)
    phone.match /^\+?[7,8]{1}\-\d{3}\-\d{3}\-\d{2}\-\d{2}$/
  end
    
  def phone=(phone)
     raise ArgumentError,"Invalid phone number" if !phone.nil?&&!Student.check_phone(phone)
     @Phone = phone
  end
end
