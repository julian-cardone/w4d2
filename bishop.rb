require_relative "slideable.rb"

class Bishop
    def initialize(symbol)
        super
    end

    private
    def move_dirs(direction)
        self.diagonal_dirs(direction)
    end
end