# Defines a Phrase class (inheriting from String).
class Phrase < String

  def processed_content
    self.downcase
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
