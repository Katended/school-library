class Rental
  attr_accessor :date

  def initialize(date)
    @date = date
    book.add_rental(self)
    person.add_rental(self)
  end
end
