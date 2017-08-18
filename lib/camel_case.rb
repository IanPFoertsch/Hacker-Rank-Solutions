class CamelCase
  def read
    @string = STDIN.gets
  end

  def convert
    @string.split(/(?=[A-Z])/)
  end

  def self.run
    converter = CamelCase.new
    converter.read
    converter.convert.length

  end
end


puts STDIN.gets.count("A-Z") + 1
