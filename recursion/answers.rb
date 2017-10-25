
# (1) Define a recursive function that finds the factorial of a number.
#     e.g. factorial(4) = 4 * 3 * 2 * 1 = 24

def factorial(n)
  if n <= 1 # base case
    1
  else
    n * factorial(n - 1)
  end
end

# (2) Define a recursive function that returns true if a string is a palindrome and false otherwise.
#     A palindrome is a word, phrase, or sequence that reads the same backward as forward.
#     e.g. 'radar', 'level', 'kayak'

def palindrome(string)
  if string.length <= 1 # base case
    true
  else
    if string[0] == string[-1]
      palindrome(string[1..-2])
    else
      false
    end
  end
end

# (3) Define a recursive function that takes an argument n and returns the fibonacci value of that position.
#     The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21...etc
#     So fibonacci(5) should return 5 and fibonacci(6) should return 8.

def fibonacci(n)
  if n == 0 # base case
    0
  elsif n == 1 # base case
    1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

# (4) Define a recursive function that flattens an array.
#     The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4],
#     and convert [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

def flatten(array, result = [])
  array.each do |item|
    if item.class != Array # base case
      result << item
    else
      flatten(item, result)
    end
  end
  result
end

# Note: you can also `array.flatten` :)


# Source: http://www.codequizzes.com/computer-science/beginner/recursion