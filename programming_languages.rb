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




def reformat_languages(languages)
  combined = languages[:oo].merge(languages[:functional])
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
  combined
end

