require 'include_files'
require 'json'

describe Book do
  # Arrange
  before :each do
    @book = Book.new 'Title', 'Author'
    @person = Student.new('25', '2', 'David', parent_permission: true)
    @rental = Rental.new('2020/12/12', @book, @person)
  end

  context 'Add new book' do
    # Act
    # Assert
    it 'Should be able to to crerate an instance of Book' do
      expect(@book).to be_an_instance_of Book
    end

    it 'Should be able to return \'Title\'' do
      expect(@book.title).to eq 'Title'
    end

    it 'Should be able to return \'Author\'' do
      expect(@book.author).to eq 'Author'
    end
  end

  context 'Add a rental' do
    it 'Should be able to return should be able to return 1' do
      # Arrange
      # Act
      @book.add_rental(@rental)

      # Assert
      expect(@book.rentals.length).to eq 1
    end
  end

  context 'convert book object to JSON' do
    it 'Should be able to return json ' do
      # Arrange
      # Act
      json_obj = @book.as_json.to_s

      # Assert
      expect(json_obj).to eq '{:type=>"Book", :title=>"Title", :author=>"Author", :rentals=>[]}'
    end
  end
end
