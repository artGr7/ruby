class Data_list

  def initialize(elements)
    self.data= elements
    self.selected= []
  end

  def select(number)
    selected << number unless selected.include?(number)
  end

  def get_selected
    selected_id = []
    selected.flatten.each do |i|
      selected_id << data[i].id
    end
    selected_id
  end

  def get_names
  end

  def get_data
  end

  protected
  def data=(data)
    @data = data
  end

  def data
    @data
  end

  def selected=(selected)
    @selected = selected
  end

  def selected
    @selected
  end

end
