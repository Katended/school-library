require './src/rental'
require 'json'

class RentalWriter
  def initialize
    @file_path = './data/rentals.json'
  end

  def read
    return [] unless File.exist?(@file_path) && !File.empty?(@file_path)

    rentals = []
    File.open(@file_path, 'r') do |file|
      JSON.parse(file.read).each do |data|
        rental = Rental.from_json(data.to_json)
        rentals << rental
      end
    end
    rentals
  end

  def create(data)
    File.write(@file_path, JSON.generate(data.map(&:as_json)))
  end
end
