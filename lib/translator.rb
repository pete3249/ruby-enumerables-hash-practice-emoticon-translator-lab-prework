require 'yaml'
require 'pry'

def load_library(emoticons_dictionary)
  loaded_emoticons_dictionary = YAML.load_file(emoticons_dictionary)
  sorted_dictionary = {:get_meaning => {}, :get_emoticon => {}}
  loaded_emoticons_dictionary.each do |name, symbols|
    binding.pry
    sorted_dictionary[:get_meaning][symbols[1]] = name
    sorted_dictionary[:get_emoticon][symbols[0]] = loaded_emoticons_dictionary[name][1]
  end
  sorted_dictionary
end

def get_english_meaning
  load_library(emoticons_dictionary)
end


def get_japanese_emoticon
  # code goes here
end
