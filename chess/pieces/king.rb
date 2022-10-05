require_relative "steppable.rb"

class King
    include Steppable
    
    def initialize(symbol, board, pos)
        super
    end

    protected
    def move_diffs
        KING_DIFFS
    end

    private
    KING_DIFFS =
    [[-1, 0], [-1, 1], [0, 1], [1, 1], [1, 0], [1, -1], [0, -1], [-1, -1]]
end