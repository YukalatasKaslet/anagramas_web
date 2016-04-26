# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 

require 'csv'

words = CSV.read("words")

words.each do |array|
  canoni = array[0].downcase.split("").sort.join
  w = array[0].downcase
  Word.create(word: w, canonical: canoni)
end