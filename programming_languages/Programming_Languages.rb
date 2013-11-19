# Organizing Nested Data

# I have a collection of Programming Languages.  
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

# I would like you to reformat the nested structure to be of the following form

# language = {
#   :ruby => {
#     :style => [:oo],
#     :type => "interpreted"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "interpreted"
#   }
#   etc etc
# }

new_lang = {}
languages.each do |key, value| # key = :oo, :functional ; value = {hash with key=language names}
  value.each_key do |key2|

    if new_lang[key2].nil?
      new_lang[key2] = {}
      new_lang[key2][:style] = []
    end
    
    new_lang[key2][:style] << key
    value.each_value do |value2|
      value2.each do |key3, value3|
        new_lang[key2][key3] = value3
      end
    end

    
  end

 
end

#second implementation. Javascript does not have TWO Types in the code below. Fail.

# new_hash = {}
# languages.each do |style, lang_hash|
#   lang_hash.each do |lang, type|
#     new_hash[lang] = type
#     new_hash[lang][:style] = []
#     new_hash[lang][:style] << style
#   end
# end




puts "new_lang is #{new_lang}"
