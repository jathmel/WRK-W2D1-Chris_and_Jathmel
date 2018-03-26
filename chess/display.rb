require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  def initialize(board, cursor)
    @board = board
    @cursor = cursor
  end
  def render
    board.each do |row|
      row.each do |square|
        print square.symbol.colorize(square.color)
      end
      puts
    end
  end


end
