# require 'pry'

module MarkdownProcessor
  
  def self.convert_to_h1(string)
    
    if string[0] == '#'
      string.tr!('#', "").lstrip!
      "<h1>#{string}</h1>"
    else
      false
    end
    
  end
  
end

# binding.pry