require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  attr_reader :board, :cursor
  def initialize(cursor, board)
    @board = board
    @cursor = cursor
  end
  def render
    system('clear')
    board.grid.each do |row|
      row.each do |square|
        print square.symbol.colorize(square.color)
      end
      puts
    end
  end


end
