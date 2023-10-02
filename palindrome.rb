# Defines a Phrase class.
class Phrase
end

phrase = Phrase.new
puts phrase

# Returns true for a palindrome, false otherwise.
def palindrome?(string)
  processed_content = string.downcase
  processed_content == processed_content.reverse
end