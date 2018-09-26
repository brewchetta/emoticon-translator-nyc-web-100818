require 'yaml'
require 'pry'


def load_library(filepath)
  library = YAML.load_file(filepath)
  new_library = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emotes|
    engl_emote = emotes[0]
    japa_emote = emotes[1]
    new_library["get_meaning"][japa_emote] = meaning
    new_library["get_emoticon"][engl_emote] = japa_emote
  end
  new_library
end

def get_japanese_emoticon(filepath,emoticon)
  library = load_library(filepath)
  library[get_emoticon].each do |engl,japa|
    return japa if engl == emoticon
  end
  "Sorry, this isn't in the database!"
end

def get_english_meaning(filepath,emoticon)
  library = load_library(filepath)
  
end
