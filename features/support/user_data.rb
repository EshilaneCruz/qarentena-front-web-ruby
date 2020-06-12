require 'json'
require 'yaml'
require 'ostruct'
 
class UserData
  @data = JSON.parse(YAML.load(File.read('features/support/data/user_data.yml')).to_json, object_class: OpenStruct)

  def self.get(info)
    @data.send(info)
  end
end