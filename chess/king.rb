require_relative 'piece'
require_relative 'stepable'

class King < Piece
  include Stepable
  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = "\u2654 "
  end

  # protected
  def move_diffs
  end

end
