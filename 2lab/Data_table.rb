class Data_table

  def initialize(data)
    self.data= data
  end

  def at(row,col)
    data[row][col]
  end

  def rows_length
    data.length
  end

  def columns_length
    data[0].length
  end


  def data=(data)
    @data=data
  end
  def data
    @data
  end

end
