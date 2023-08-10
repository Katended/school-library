require 'include_files'
require 'json'

describe Rental do

    context 'New Rental' do
        it 'Should be able to crerate a new Rental object' do
        # Arrange
        @book = Book.new('Title', 'Author')
        @person = Student.new('25', '1', 'David', parent_permission: true)
        @rental = Rental.new('2020/12/12', @book, @person)

        # Act

        # Assert
        expect(@rental).to be_an_instance_of Rental
        end
    end 


    context 'Rental object to JSON' do
        it 'Should be able to convere json string' do
        # Arrange
        @book = Book.new('Title', 'Author')
        @person = Student.new('25', '1', 'David', parent_permission: true)
        @rental = Rental.new('2020/12/12', @book, @person)

        # Act
        json_obj = @rental.to_json.to_s
    
        # rubocop:disable Layout/LineLength
        json_str = 'Rental'
        # rubocop:enable Layout/LineLength

        # Assert
        expect(json_obj).to include(json_str)
    
        end
    end

end