require_relative "slideable.rb"

class Bishop < Piece
    include Slideable

    def initialize(symbol, board, pos)
        super
    end

    private
    def move_dirs
        self.diagonal_dirs
    end
end