# Defines a Phrase class (inheriting from String).
class String
  # Processes the string for palindrome testing.
  def processor(string)
    string.downcase
  end

  # Returns content for palindrome testing.
  def processed_content
    processor(self)
  end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end
end

  # Makes the phrase LOUDER.
    upcase
  end

# Defines a translated Phrase.
class TranslatedPhrase < Phrase
  attr_accessor :translation

  def initialize(content, translation)
    super(content)
    @translation = translation
  end

  # Processes the translation for palindrome testing.
  def processed_content
    processor(translation)
  end

  def louder
end
