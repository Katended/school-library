require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, parent_permission = Trrue, name = 'Unknown')
    super(age, parent_permission, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
