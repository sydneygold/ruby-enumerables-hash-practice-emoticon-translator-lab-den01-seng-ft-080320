require "yaml"
require 'pry'

def load_library(file)
data = YAML.load_file(file)
final_result = {}
data.each_pair do |key, translation|
  final_result[key]= {:english => translation[0], :japanese => translation[1]}
  end
  return final_result
  binding.pry
end


def get_japanese_emoticon()

end


def get_english_meaning()
  # code goes here

end
