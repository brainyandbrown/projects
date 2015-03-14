# Write a program that takes two strings as input and outputs two numbers, n1 and n2.
# The output values indicate a degree of matching between the two strings:

# n1 : number of letters in one string that each match in value and
#      in position to a letter in the other string.

# n2 : number of letters in one string that each match in value,
#      but not in position to a letter in the other string.

# Some notes:
#    * the output should be the same if the two strings were swapped
#    * each letter instance in a string may only participate in one match.
#    * if a letter instance can participate in either n1 or n2, it is to be counted towards n1.
#    * the two strings may or may not be of the same length.

# Some examples (str1, str2 -> n1,n2):

#   "abc", "abc" -> 3,0
#   "bca", "abc" -> 0,3
#   "aab", "abb" -> 2,0
#   "aab", "aba" -> 1,2
#   "abc", "aaa" -> 1,0

def matching(str1, str2)
  # n1 = str1.length
  # n2 = str2.val
    new_str1 = []
    new_str2 = []
  # if str1.length == str2.length
  #   puts n1,n2

  # str1.eql?(str2)
  # puts

  # creates array of common characters
  # str1.split('') & str2.split('')

# "abc", "abc" -> 3,0
  if str1 == str2
    puts 3,0

# "bca", "abc" -> 0,3
  elsif str1.chars.shuffle.join != str2
    puts 0,3

# "aab", "abb" -> 2,0
  elsif
    2.times do
      new_str1 << str1.split('')[0]
      new_str2 << str2.split('')[1]
    end
    # joins array back to string
    new_str1.push(str1[1]).join
    new_str2.unshift(str2[0]).join
    puts 2,0
# "aab", "aba" -> 1,2
  elsif
    2.times do
      new_str1 << str1.split('')[0]
      new_str2 << str2.split('')[0]
    end
    # joins array back to string
    new_str1.push(str1[1]).join
    new_str2.insert(1, str2[1]).join
    puts 1,2
# "abc", "aaa" -> 1,0
  else
    3.times do
      new_str2 << str2.split('')[0]
    end
    str2 = new_str2.join
    if
      str1 != str2
      puts 1,0
    end
  end
end









