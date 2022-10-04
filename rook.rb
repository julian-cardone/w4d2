require_relative "slideable.rb"

class Rook
    def initialize(symbol)
        super
    end

    def valid_moves
        result = []

        move_dirs.each do |dir|
            dx, dy = dir
            grow_unblocked_moves_in_dir(dx, dy)
        end

        result
    end

    private
    def move_dirs
        self.horizontal_dirs
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        result = []
        next_pos = [@pos[0] + dx, @pos[1] + dy]
        while @board.valid_pos?(next_pos)
            result << next_pos
            next_pos = [@pos[0] + dx, @pos[1] + dy]
        end
        result
    end
end