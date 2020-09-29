# Exercise 3: vector practice

# Create a vector `words` of 6 (or more) words.
# You can Google for a "random word generator" if you wish!
words <- c("beware", "oblivion", "is", "at", "hand", "power", "overwhelming")

# Create a vector `words_of_the_day` that is your `words` vector with the string
# "is the word of the day!" pasted on to the end.
# BONUS: Surround the word in quotes (e.g., `'data' is the word of the day!`)
# Note that the results are more obviously correct with single quotes.
words_of_the_day <- paste("'",sample(words,1),"' is the word of the day", sep='')

# Create a vector `a_f_words` which are the elements in `words` that start with 
# "a" through "f"
# Hint: use a comparison operator to see if the word comes before "f" alphabetically!
# Tip: make sure all the words are lower-case, and only consider the first letter
# of the word!
a_f_words <- words[substring(words,1,1) %in% letters[1:6]]

# Create a vector `g_m_words` which are the elements in `words` that start with 
# "g" through "m"
g_m_words <- words[substring(words,1,1) %in% letters[7:13]]

# Define a function `word_bin` that takes in three arguments: a vector of words, 
# and two letters. The function should return a vector of words that go between 
# those letters alphabetically.
word_bin <- function(list_of_words, start, end){
  list_of_words[list_of_words>= start & substring(list_of_words, 1, 1)<=end]
}

# Use your `word_bin` function to determine which of your words start with "e" 
# through "q"
word_bin(words, 'e', 'q')

