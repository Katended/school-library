class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, parent_permission = True, name = 'Unknown')
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
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
end