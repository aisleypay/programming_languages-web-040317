require "pry"

def reformat_languages(languages_by_style)
  new_hash = {}

  languages_by_style.each { |style, languages|

    languages.each { |language, type|
      if new_hash[language] == nil
        new_hash[language] = type
      end

      if new_hash[language][:style] == nil
        new_hash[language][:style] = [style]
      else
        new_hash[language][:style] << style
      end
    }

  }
  
  new_hash
end
