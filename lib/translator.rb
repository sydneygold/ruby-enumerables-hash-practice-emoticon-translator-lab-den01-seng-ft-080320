require "yaml"
require 'pry'

def load_library(file)
data = YAML.load_file(file)
final_result = {}
data.each_pair do |key, translation|
  final_result[key]= {:english => translation[0], :japanese => translation[1]}
  end
  #binding.pry
  return final_result
end


def get_japanese_emoticon(file, english_emoticon)
library = load_library(file)
library.each do |key, value|
  #binding.pry
if english_emoticon == value[:english]
  #binding.pry
  return value[:japanese]
    end
  end
  p "Sorry, that emoticon was not found"
end


def get_english_meaning(file, japanese_emoticon)
library = load_library(file)
library.each do |key, value|
  if japanese_emoticon == key[:japanese]
    return key[:english]
    end
  end
  p "Sorry, that emoticon was not found"
end
