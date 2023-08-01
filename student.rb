require_relative 'person'

class Student < Person
  def initialize(age, classroom, parent_permission = True, name = 'Unknown')
    super(age, parent_permission, name)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end