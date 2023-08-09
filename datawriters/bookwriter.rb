require './src/book'
require 'json'
require 'pry'
class BookWriter
  def initialize
    @file_path = './data/books.json'
  end

  def read
    return [] unless File.exist?(@file_path) && !File.empty?(@file_path)

    books = []
    File.open(@file_path, 'r') do |file|
      JSON.parse(file.read).each do |data|
        book = Book.from_json(data.to_json)

        books << book
      end
    end

    books
  end

  def create(data)
    File.write(@file_path, JSON.generate(data.map(&:as_json)))
  end
end
