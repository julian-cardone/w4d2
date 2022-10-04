require_relative "slideable.rb"

class Queen
    def initialize(symbol)
        super
    end

    private
    def move_dirs(direction)
        if direction < 4
            return self.horizontal_dirs(direction)
        else
            return self.diagonal_dirs(direction-4)
        end
    end
end