require 'include_files'

describe Person do
  before :each do
    @person = Person.new(13, 'David', parent_permission: false)
    @unknown = Person.new(70)
  end

  context 'When testing a Person class' do
    it 'Should be able to return a \'Person\' object' do
      expect(@person).to be_an_instance_of Person
    end

    it 'Should be able to return age = 13' do
      expect(@person.age).to eql 13
    end

    it 'Should be able to return name = Kanza' do
      expect(@person.name).to eql 'David'
    end
  end

    context 'When using can_use_services? method' do
        it 'Should be able to return false if under age and no parent permission' do
        expect(@person.can_use_services?).to be false
        end

        it 'Should be able to return true if parent permission =true' do
        expect(@unknown.can_use_services?).to be true
        end
    end

    context 'When using correct_name method' do
        it 'Should be able to return \'Unknown\'' do
        expect(@unknown.correct_name).to eql 'Unknown'
        end
    end

end