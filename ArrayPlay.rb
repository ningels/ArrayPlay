
#---------------------------------------------------------
# Array Play Assignment
#
#Explorer Mode
# 1) Create an array of all of the students in our class. Assign it to a variable named "our_class".
# 2) Find all the students whose first name is less than 5 characters
# 3) Turn a sentence into an Array, and select the words that are four characters long. Here's your sentence: sentence = "Ruby is actually kind of fun once you get used to it."
# 4) Create an array of movies with budgets of less than 100 and another array of movies that starred Leonard DiCaprio.
#----------------------------------------------------------

#-----------------
# 1)  The array:

our_class = [
 "Rob",
 "David",
 "Nancy",
 "Kalea",
 "Laura",
 "Dave",
 "Demetra",
 "Kendrick",
 "Phil",
 "Ben",
 "Michael",
 "Miguel",
 "Chris"
]
puts "1 The array with the inspect command"
puts our_class.inspect

#-----------------
# 2) All students with less than 5 characters in their name
#       Syntax of select command example:  a.select {|item|"a" == item}
#-----------------
puts "2 Our class with people who have names that are less than 5 characters"
puts our_class.select{|name|  name.length < 5}

#-----------------
# 3) Convert a sentence into an array
#-----------------

sentence = "Ruby is actually kind of fun once you get used to it."

def parse_sentence (text)
  text.split
end

words = parse_sentence(sentence)
puts "3 Sentence parsed into individual words"
puts "The array put with the inspect command"
puts words.inspect
puts "The array just with a puts"
puts words

#-----------------
# 4) Movies with a) budgets < 100 and b) starting Leonardo
#-----------------

movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

puts "Movies with budgets less than 100"
low_budget = movies.select {|x| x[:budget] < 100}
puts low_budget



puts "Movies staring Leonardo DiCaprio"
leonardo_movies = movies.select {|x| x[:stars].include?  "Leonardo DiCaprio"}
puts leonardo_movies

#---------------------------------------------------------
# Adventure Mode
# 1) Make a method that will always return the words in a String that contain four characters. Called as: four_words(text) Use this to answer the relevant questions in Explorer Mode.
# 2) Make a method that will return the words in a String that are x characters long (as in: how_many_words(text, num))
# 3) What's the total budget of our movies?
#----------------------------------------------------------
