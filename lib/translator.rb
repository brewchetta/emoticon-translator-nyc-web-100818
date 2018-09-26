require 'yaml'

def load_library(filepath)
  library = YAML.load_file(filepath)
  new_library = {get_meaning => {}, get_emoticon => {}}
  library.each 
  new_library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
