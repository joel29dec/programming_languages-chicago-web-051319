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

languages[:functional].map do |k, v| 
  if combined.include?(k) 
  combined[k].merge!(:style => [:functional]) 
    end
  end  
languages[:oo].map do |k, v| 
  if combined.include?(k) 
  combined[k].merge!(:style => [:oo]) 
    end
  end
combined[:javascript][:style] << :functional
binding.pry


def reformat_languages(languages)
  new_hash = {}
  
  new_hash
end

