require_relative 'person'

class Teacher < Person

  attr_reader :specialization

  def initialize(age, specialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def self.from_json(json)
    data = JSON.parse(json)
    new(data['age'], data['specialization'], data['name'], true)
  end

  def as_json(_options = {})
    {
      type: 'Teacher',
      id: @id,
      name: @name,
      age: @age,
      specialization: @specialization,
      parent_permission: @parent_permission
    }
  end
end
