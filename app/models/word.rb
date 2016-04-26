class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams_words(user_word)
    w = Word.where(["word = :word", { word: user_word.downcase }])
    anagrams_words = Word.where(["canonical = :canonical", { canonical: w.first.canonical}]) 
  end
end#class Word