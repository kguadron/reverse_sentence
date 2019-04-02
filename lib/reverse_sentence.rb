# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2) where n is the length of my_sentence
# Space complexity: Constant or O(1) because we are not creating any new data
#                   structures and therefore not taking up more space in memory
def reverse_sentence(my_sentence)
  my_sentence = reverse_words(my_sentence)
  return string_reverse(my_sentence)
  
end

def reverse_words(my_words)
  return nil if my_words.nil?

  i = 0
  j = 0
  while j < my_words.length
    if my_words[i] == " "
      i += 1
      j = i
    end

    while j < my_words.length && my_words[j] != " "
      j += 1
    end

    reverse(my_words, i, j - 1)
    i = j
  end

  return my_words
end

def reverse(array, low, high)
  while (low < high)
    temp = array[low]
    array[low] = array[high]
    array[high] = temp
    low += 1
    high -= 1
  end
end

def string_reverse(my_string)
  if my_string != nil
    a = 0
    b = my_string.length - 1
    temp = nil
    while a < b
      temp = my_string[a]
      my_string[a] = my_string[b]
      my_string[b] = temp
      a += 1
      b -= 1
    end
  return my_string
  end
end
