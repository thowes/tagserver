def palindrome?(string)
end
# Defines a Phrase class.
class Phrase
  attr_accessor :content

  def initialize(content)
    @content = content
  end
end

phrase = Phrase.new("Madam, I'm Adam.")
puts phrase.content

phrase.content = "Able was I, ere I saw Elba."
puts phrase.content

# Returns true for a palindrome, false otherwise.
  processed_content = string.downcase
  processed_content == processed_content.reverse
