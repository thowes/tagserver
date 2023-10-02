# Defines a Phrase class.
class Phrase
  def initialize(content)
    @content = content
  end
end

phrase = Phrase.new("Madam, I'm Adam.")
puts phrase.content

# Returns true for a palindrome, false otherwise.
def palindrome?(string)
  processed_content = string.downcase
  processed_content == processed_content.reverse
end