get '/' do
  erb :index
end

get '/:new_word' do
	@new_word = params[:new_word]
  @words    = Word.anagrams_words(@new_word)

  erb :word
end

post '/new_word' do
  redirect to ("/#{params[:user_word]}")
end

=begin
def canonical(word)
  word.split("").sort
end


def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

p are_anagrams?("omar","roma")

def anagrams_for(word,array)
  array.select{|w| canonical(w) == canonical(word) }
end

p anagrams_for("amor", ["romaa", "omaar", "moraa", "raamo", "hola"])
p anagrams_for("amor", ["roma", "omar", "mora", "ramo", "hola"])
=end