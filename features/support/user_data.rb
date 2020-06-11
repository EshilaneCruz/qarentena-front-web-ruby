require'json'
require'yaml'
require'ostruct'
 
class UserData
  attr_reader data
  def initialize
    @data = JSON.parse(YAML.load(File.read('features/support/data/user_data.yml')).to_json, object_class: OpenStruct)
  end
end