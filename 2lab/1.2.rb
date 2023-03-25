class Student
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

  def getid
    @id
  end

  def setid(id)
    @id = id
  end

  def getname
    @name
  end

  def setname(name)
    @name = name
  end

  def getlastName
    @lastName
  end

  def setlastName(lastName)
    @lastName = lastName
  end

  def getphone
    @phone
  end

  def setphone(phone)
    @phone = phone
  end

  def gettelegram
    @telegram
  end

  def settelegram(telegram)
    @telegram = telegram
  end

  def getemail
    @email
  end

  def setemail(email)
    @email = email
  end

  def getgit
    @git
  end

  def setgit(git)
    @git = git
  end

  def megaprint
    puts "Id: #{@id}, Lastname: #{@lastName}, Name: #{@name}, Patronymic: #{@patronymic}, Phone: #{@phone}, Telegram #{@telegram}, Email #{@email}, Github link: #{@git}\n\n"
  end

end
