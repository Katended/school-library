require_relative 'nameable'
require_relative 'capitalizedecorator'
require_relative 'trimmerdecorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? || @parent_permission
  end

  def generate_id
    rand(1..1000)
  end

  def correct_name
    puts @name
  end

  def add_rental(rental)
    @rentals << rental
  end
end
