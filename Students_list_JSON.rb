require 'json'

class Students_list_JSON

  def self.list_hash_from_str(str)
    JSON.parse(str, symbolize_names: true)
  end

  def self.list_hash_to_str(list_hash)
    JSON.generate(list_hash)
  end

end