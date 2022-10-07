require "json"
require "yaml"
require "ostruct"

class Dados
  @dados = JSON.parse(YAML.load(File.read("features/support/dados/Dados.yml")).to_json,object_class: OpenStruct)

  def self.set(info)
      @dados.send(info)
  end
end