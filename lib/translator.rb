require 'yaml'
require 'pry'

def load_library(emoticons_dictionary)
  loaded_emoticons_dictionary = YAML.load_file(emoticons_dictionary)
  sorted_dictionary = {:get_meaning => {}, :get_emoticon => {}}
  loaded_emoticons_dictionary.each do |name, symbols|
    sorted_dictionary[:get_meaning][symbols[1]] = name
    sorted_dictionary[:get_emoticon][symbols[0]] = symbols[1]
  end
  sorted_dictionary
end

def get_english_meaning(emoticons_dictionary, emoticon)
  loaded_emoticons = load_library(emoticons_dictionary) 
  loaded_emoticons[:get_meaning].each do |key, values|
    if key == emoticon
      english_meaning = loaded_emoticons[key]
    else
      sorry_message = "Sorry, that emoticon was not found"
      p sorry_message
    end
    english_meaning
  end
end

def get_japanese_emoticon
  # code goes here
end
