require 'pry'

class List
  def initialize(parent)
    @parent = parent
  end

  def books
    if @parent.books_list.empty?
      puts 'No record found! Add some books...'
    else
      puts 'Available books in the library'
      @parent.books_list.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    end
  end

  def people
    if @parent.people_list.empty?
      puts 'No record found! Add a person...'
    else
      puts 'All people in the library'
      @parent.people_list.each do |person|
        puts "Name: #{person.name}
        , ID: #{person.id}
        , Age: #{person.age}
        , parent_permission: #{person.parent_permission}"
      end
    end
  end

  def rentals
    print 'ID of person: '

    puts 'Rentals:'

    if @parent.rentals_list.empty?
      puts 'No record found! Add a rental...'
    else
      @parent.rentals_list.each do |rental|
        puts "Date: #{rental.date}, Book \"#{rental.book}\" "
      end
    end
  end
end
