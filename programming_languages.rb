require 'pry'
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

combined = languages[:oo].merge(languages[:functional])
#iterate over combined and check languages hash if its oo or functional if it is add symbol to :style =>
languages[:oo].each {|k| k.each {|k, v| puts k}}
binding.pry

def reformat_languages(languages)
  new_hash = {}
  
  new_hash
end

