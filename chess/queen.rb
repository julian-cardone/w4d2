require_relative "slideable.rb"

class Queen < Piece
    include Slideable
    
    def initialize(symbol, board, pos)
        super
    end

    private
    def move_dirs
        return self.horizontal_dirs + self.diagonal_dirs
    end
end