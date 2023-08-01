require_relative 'person'

class Student < Person
  def initialize(age, classroom, parent_permission, name)
    super(age, parent_permission, name)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end
end
