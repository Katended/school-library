require_relative '../src/list'
require_relative 'filemanager'
require_relative '../datawriters/bookwriter'
require_relative '../datawriters/personwriter'
require_relative '../datawriters/rentalwriter'
require 'pry'

class App
  attr_accessor :books_list, :people_list, :rentals_list

  def initialize(parent)
    @parent = parent
    @books_list = []
    @people_list = []
    @rentals_list = []

    initialize_data
    @list = List.new(self)
  end

  def initialize_data
    @books_manager = FileManager.new(BookWriter.new)
    @books_list = @books_manager.read

    @people_manager = FileManager.new(PersonWriter.new)
    @people_list = @people_manager.read

    @rentals_manager = FileManager.new(RentalWriter.new)
    @rentals_list = @rentals_manager.read
  end

  def list_all_people
    @list.people
  end

  def list_all_books
    @list.books
  end

  def list_all_rentals
    @list.rentals
  end

  def add_people_list(person)
    @people_list.push(person)
    # @filemanager.filewriter = PersonWriter.new(@people_list)
    # @filemanager.create
  end

  def add_book_list(book)
    @books_list.push(book)
    # @filemanager.filewriter = BookWriter.new(@books_list)
    # @filemanager.create
  end

  def add_rental_list(rental)
    @rentals_list.push(rental)
    # @filemanager.filewriter = RentalWriter.new(@rentals_list)
    # @filemanager.create
  end

  def save_data
    @books_manager.create(@books_list)
    @people_manager.create(@people_list)
    @rentals_manager.create(@rentals_list)
  end
end
