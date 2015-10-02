class WordCounter
  def initialize(text, special_word)
    @text = text
    @special_word = special_word.downcase
  end

  def get_text
    return @text
  end

  def get_special_word
    return @special_word
  end

  def word_count
    return get_text.split.count
  end

  def character_count_with_spaces
    return get_text.length
  end

  def character_count_without_spaces
    return get_text.gsub(" ", "").length
  end

  def occurences
    get_text
      .downcase
      .split
      .count(get_special_word)
  end
end
