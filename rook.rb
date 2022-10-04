require_relative "slideable.rb"

class Rook
    def initialize(symbol)
        super
    end

    private
    def move_dirs(direction)
        self.horizontal_dirs(direction)
    end

    def grow_unblocked_moves_in_dir
end