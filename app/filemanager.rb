require 'pry'
class FileManager
  attr_accessor :filewriter

  def initialize(filewriter)
    @filewriter = filewriter
  end

  def create(data)
    @filewriter.create(data)
  end

  def read
    @filewriter.read
  end
end
