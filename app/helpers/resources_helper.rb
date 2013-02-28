module ResourcesHelper

  def determine_num_of_spaces(word, type)
    column_length = 8
    word_length = word.length
    num_of_spaces = column_length - word_length
    return raw "&nbsp;" * num_of_spaces if type == :html
    return raw " " * num_of_spaces if type == :text
  end

end
