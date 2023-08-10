require 'include_files'

describe Student do
  before :each do
    @student = Student.new(25, '1', 'David', parent_permission: true)
    @classroom = Classroom.new('1')
  end

  context 'When testing a Student class' do
    it 'takes four parameters and returns a Student object' do
      expect(@student).to be_an_instance_of Student
    end

    it 'should return the correct classroom = 1' do
      expect(@student.classroom).to eql '1'
    end
  end

  context 'When using play_hooky method' do
    it 'should return a string ¯¯\\(ツ)/¯' do
      expect(@student.play_hooky).to eql '¯(ツ)/¯'
    end
  end

  context 'When using classroom method' do
    it 'should assign student to a classroom' do
      @student.classroom = @classroom
      expect(@student.classroom).to eql @classroom
    end
  end
end
