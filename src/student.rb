require_relative 'person'

class Student < Person
  def initialize(age, _classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = _classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end

  attr_writer :classroom
end
