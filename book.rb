# frozen_string_literal: true

require_relative 'product'

# Book class.
class Book < Product
  def self.from_file(path)
    file = File.open path
    content = file.readlines.map(&:chomp)
    file.close
    new(*content)
  end

  def initialize(name, price, quantity, author, genre)
    super name, price, quantity
    @author = author
    @genre = genre
  end

  def to_s
    "Книга \"#{@name}\", #{@genre}, автор — #{@author}, #{@price} руб. (осталось #{@quantity})"
  end
end
