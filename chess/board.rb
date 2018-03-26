require_relative 'null_piece.rb'
require_relative 'pawn'

class Board
  attr_reader :grid
  def initialize
    @sentinel = NullPiece.new([10, 10])
    @grid = Array.new(8) { |row| Array.new(8) { |col| NullPiece.new([row, col]) } }
    # populate board with pieces in chess formation on initialize
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    grid[row][col] = val
  end

  def move_piece(start_pos, end_pos)
    if self[start_pos].is_a?(NullPiece)
      raise TypeError.new("No piece at start position")
    end
    unless valid_pos?(end_pos)
      raise RangeError.new("End position is not on the board")
    end
    self[end_pos] = self[start_pos]
    self[start_pos] = NullPiece.new
  end

  def valid_pos?(pos)
    row, col = pos
    row.between?(0, 7) && col.between?(0, 7)
  end

  def add_piece(piece, pos) # make private later
    self[pos] = piece
  end

  def checkmate?(color)
    # if color.king.valid_moves.empty?
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end

end
