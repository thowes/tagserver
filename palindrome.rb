# Defines a Phrase class (inheriting from String).
class Phrase < String

  # Returns content for palindrome testing.
  def processed_content
    downcase
  end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Makes the phrase LOUDER.
  def louder
    upcase
  end
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
    translation.downcase
  end
end

