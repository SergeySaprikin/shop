# frozen_string_literal: true

require_relative 'product'
require_relative 'movie'
require_relative 'book'
movie1 = Product.create Movie, 'Леон', 990, 5, 1994, 'Люк Бессон'
movie2 = Product.create Movie, 'Дурак', 390, 1, 2014, 'Юрий Быков'
book1 = Product.create Book, 'Идиот', 1500, 10, 'Федор Достоевский', 2014
puts movie1.to_s
puts movie2.to_s
puts book1.to_s
book1.update quantity: 5, price: 1235
puts book1.to_s
puts Movie.from_file('./data/films/01.txt').to_s
puts Book.from_file('./data/books/01.txt').to_s
