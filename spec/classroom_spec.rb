require 'include_files'
require 'json'

describe Classroom do
 # Arrange
 before :each do
    @classroom = Classroom.new('Label')
  end

  describe 'New classroom' do

    it 'Should be able to return \'Label\'' do
      # Arrange
      # Act
      label = @classroom.label

      # Assert
      expect(label).to eq 'Label'
    end

    it 'Should be able to add a student to a class' do
        # Arrange  
        student = Student.new('25', '3', 'Mohi', parent_permission: true)
  
        # Act
        @classroom.add_student(student)
        number_of_students = @classroom.students.length
  
        # Assert
        expect(number_of_students).to eq 1
      end

end
  
end