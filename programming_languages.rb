def reformat_languages(languages)
  newFormat={}
  languages.each do |style, lang|
    lang.each do |name, type|
      if newFormat.has_key?(name)
        newFormat[name][:style] = style
      else
        newFormat[name]= type
        newFormat[name][:style]= style
      end
    end
  end
  newFormat
end
