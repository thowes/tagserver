# Defines a Phrase class.
class Phrase < String
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content = self.downcase
    processed_content == processed_content.reverse
  end

  # Makes the phrase LOUDER.
  def louder
    self.upcase
  end
end
