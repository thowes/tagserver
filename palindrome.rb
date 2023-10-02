# Monkeypatch string to include palindrome.
module Palindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  # Processes the string for palindrome testing.
  def processor(string)
    string.downcase
  end

  # Returns content for palindrome testing.
  def processed_content
    processor(self.to_s)
  end
end
