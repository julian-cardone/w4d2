require_relative "steppable.rb"

class Knight
    include Steppable
    
    def initialize(symbol, board, pos)
        super
    end

    protected
    def move_diffs
        KNIGHT_DIFFS
    end

    private
    KNIGHT_DIFFS =
    [[-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2,-1]]
end