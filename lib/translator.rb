require 'yaml'
emoticons_dictionary = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons_dictionary)
sorted_dictionary = {}
  emoticons_dictionary.each do |name, symbols|
    symbols.each do |symbol|
      if sorted_dictionary[name]
        sorted_dictionary[name][:japanese] << symbol.to_s
      else
        sorted_dictionary[name] = {:english => "", :japanese => ""}
        sorted_dictionary[name][:english] << symbol.to_s
      end
    end
  end
  sorted_dictionary
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end