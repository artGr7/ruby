require 'yaml'

class Students_list_YAML

  def self.keys_to_sym(hash)
    result = {}
    hash.each_pair do |key, value|
      value = value.keys_to_sym if value.class == Hash
      result[key.to_sym] = value
    end
    result
  end

  def self.list_hash_from_str(str)
    YAML.load(str).map { |hash| self.keys_to_sym(hash)}
  end

  def self.list_hash_to_str(list_hash)
    list_hash.map{ |hash| self.keys_to_sym(hash).to_yaml}
  end

end