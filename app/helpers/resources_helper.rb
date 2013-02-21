module ResourcesHelper

  def determine_num_of_spaces(word)
    column_length = 8
    word_length = word.length
    num_of_spaces = column_length - word_length
    raw "&nbsp;" * num_of_spaces
  end

end
