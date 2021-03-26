# frozen_string_literal: true

# Product class.
class Product
  def self.from_file(path)
    raise NotImplementedError
  end

  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def self.products
    # Product.subclasses
    ObjectSpace.each_object(::Class).select { |klass| klass < self }
  end

  def update(hash)
    hash.each do |key, value|
      instance_variable_set "@#{key}", value if defined? "@#{key}"
    end
  end

  def self.create(*args)
    raise "Unknown class: #{args[0]}" unless products.include? args[0]

    args[0].new(*args[1..-1])
  end
end
