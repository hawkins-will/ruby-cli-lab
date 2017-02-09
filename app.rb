ocean = []
rows = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
row_index = 0
index = 1

class Square
  attr_accessor :id, :status, :symbol
  def initialize(id, status = "Empty", symbol = "@")
    @id = id
    @status = status
    @symbol = symbol
  end

  def hit
    if @status == "Ship"
      puts "It's a Hit!"
      @status = "Damaged"
    elsif @status == "Empty"
      puts "You've missed!"
    elsif @status == "Damaged"
      puts "Well, that was overkill..."
    end
  end
end

100.times do |square|
  new_square = Square.new("#{rows[row_index]}#{index}")
  ocean << new_square
  puts new_square.id
  index += 1
  if index == 11
    row_index += 1
    index = 1
  end
end


ocean[99].hit
placing_index = 0
row_index = 0
puts "    1 2 3 4 5 6 7 8 9 10\n\n"
10.times do |something|
puts "#{rows[row_index]}   #{ocean[placing_index + 0].symbol} #{ocean[placing_index + 1].symbol} #{ocean[placing_index + 2].symbol} #{ocean[placing_index + 3].symbol} #{ocean[placing_index + 4].symbol} #{ocean[placing_index + 5].symbol} #{ocean[placing_index + 6].symbol} #{ocean[placing_index + 7].symbol} #{ocean[placing_index + 8].symbol} #{ocean[placing_index + 9].symbol}"
placing_index += 10
row_index += 1
end