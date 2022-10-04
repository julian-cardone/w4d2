class Slideable

    # DIRECTIONS 
    #     directions["RIGHT"] = 0
    #     directions["DOWN"] = 1
    #     directions["LEFT"] = 2
    #     directions["UP"] = 3

    def horizontal_dirs
        return HORIZONTAL_DIRS
    end

    def diagonal_dirs 
        return DIAGONAL_DIRS
    end

    def move(start_pos, step_amount)
        dx, dy = self.move_dirs
        unblocked_moves = self.grow_unblocked_moves_in_dir(dx, dy)
        [start_pos[0] + move[0], start_pos[1] + move[1]]
    end

    private
    def move_dirs

    end

    def grow_unblocked_moves_in_dir(dx, dy)
        unblocked_moves = []
    end

    private
    HORIZONTAL_DIRS = [[0, 1], [1, 0], [0, -1], [-1, 0]]
    DIAGONAL_DIRS = [[-1, 1], [1, 1], [1, -1], [-1, -1]]
end