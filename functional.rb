states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Returns a URL-friendly version of a string.
#   Example: "North Dakota" -> "north-dakota"
def urlify(string)
  string.downcase.split.join('-')
end

# urls: Imperative version
def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end
p imperative_urls(states)

# urls: Functional version, collect is an alias for map
def functional_urls(states)
  states.collect { |state| urlify(state) }
end
puts functional_urls(states).inspect

# state's urls, collect is an alias for map
def states_urls(states)
  states.collect { |state| "https://example.com/#{urlify(state)}" }
end
puts states_urls(states).inspect

# singles: Imperative version
def imperative_singles(states)
  singles = []
  states.each do |state|
    if state.split.length == 1
      singles << state
    end
  end
  singles
end
puts imperative_singles(states).inspect

# singles: Functional version, reject is the opposite of select
def functional_singles(states)
  # states.select { |state| state.split.length == 1 } # find_all is alias of select
  states.reject { |state| state.split.length != 1 }
end
puts functional_singles(states).inspect

# includes dakotas
def includes_dakotas(states)
  states.select { |state| state.include?("Dakota") }
end
puts includes_dakotas(states).inspect


numbers = 1..10

# sum: Imperative solution
def imperative_sum(numbers)
  total = 0
  numbers.each do |n|
    total += n
  end
  total
end
puts imperative_sum(numbers)

# sum: Functional solution
def functional_sum(numbers)
  numbers.reduce { |total, n| total += n }
end
puts functional_sum(numbers)

# lengths: Imperative version
def imperative_lengths(states)
  lengths = {}
  states.each do |state|
    lengths[state] = state.length
  end
  lengths
end
puts imperative_lengths(states)

# lengths: Functional version using `inject`
def functional_lengths(states)
  states.inject({}) do |lengths, state| # inject is an alias for reduce
    lengths[state] = state.length
    lengths
  end
  # states.reduce({}) { |lengths, state| lengths.merge( {state => state.length}) }
end
puts functional_lengths(states)

# a function that returns the product of all the elements in an array.
def product_of_array(numbers)  
  numbers.reduce { |total, n| total *= n }
end
puts product_of_array(numbers)

