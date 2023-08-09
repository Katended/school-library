require_relative '../datawriters/bookwriter'
require_relative '../datawriters/personwriter'
require_relative '../datawriters/rentalwriter'

class FileManager
  attr_reader :books_list, :people_list, :rentals_list
  attr_accessor :filewriter

  def initialize(filewriter = nil)
    @filewriter = filewriter

    @books_list = []
    @people_list = []
    @rentals_list = []
  end

  def initialize_data
    @books_list = BookWriter.new(nil).read
    @people_list = PersonWriter.new(nil).read
    @rentals_list = RentalWriter.new(nil).read
  end

  def create
    @filewriter.create
  end

  def read
    @filewriter.read
  end
end
