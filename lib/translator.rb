require 'yaml'

def load_library(filepath)
  library = YAML.load_file(filepath)
  new_library = {get_meaning => {}, get_emoticon => {}}
  library.each do |meaning, emotes|
    engl_emote = emotes[0]
    japa_emote = emotes[1]
    new_library[get_meaning][emotes[1]] = meaning
    new_library[]
  end
  new_library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
