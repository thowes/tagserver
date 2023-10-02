# Monkeypatch string to include palindrome.
class String
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  def blank?; end

  private

  # Processes the string for palindrome testing.
  def processor(string)
    string.downcase
  end

  # Returns content for palindrome testing.
  def processed_content
    processor(self)
  end
end

# Defines a translated Phrase.
class Phrase < String
  attr_accessor :translation

  def initialize(content, translation)
    super(content)
    @translation = translation
  end

  # Makes the phrase LOUDER.
  def louder
    upcase
  end

  private

  # Processes the translation for palindrome testing.
  def processed_content
    processor(translation)
  end
end
