# frozen_string_literal: true

require_relative 'product'

# Movie class.
class Movie < Product
  def self.from_file(path)
    file = File.open path
    content = file.readlines.map(&:chomp)
    file.close
    new(*content)
  end

  def initialize(name, price, quantity, year, director)
    super name, price, quantity
    @year = year
    @director = director
  end

  def to_s
    "Фильм \"#{@name}\", #{@year}, реж. #{@director}, #{@price} руб. (осталось #{@quantity})"
  end
end
