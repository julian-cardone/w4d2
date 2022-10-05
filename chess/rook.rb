require_relative "slideable.rb"

class Rook < Piece
    include Slideable
    
    def initialize(symbol, board, pos)
        super
    end

    private
    def move_dirs
        self.horizontal_dirs
    end
end