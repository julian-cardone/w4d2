class Slideable
    def horizontal_dirs
        return HORIZONTAL_DIRS
    end

    def diagonal_dirs 
        return DIAGONAL_DIRS
    end

    def moves
        result = []
        self.move_dirs.each do |dir|
            dx, dy = dir
            unblocked_moves = self.grow_unblocked_moves_in_dir(dx, dy)
            result.concat(unblocked_moves)
        end
        result
    end

    private
    def move_dirs
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        result = []
        board = self.board
        pos = self.pos
        next_pos = [pos[0] + dx, pos[1] + dy]
        while board.valid_pos?(next_pos)
            if board[next_pos] == nil #NullPiece
                result << next_pos
                next_pos = [pos[0] + dx, pos[1] + dy]
            else
                if board[next_pos].color == self.color
                    break
                else
                    result << next_pos
                    break
                end
            end
        end
        result
    end

    private
    HORIZONTAL_DIRS = [[0, 1], [1, 0], [0, -1], [-1, 0]]
    DIAGONAL_DIRS = [[-1, 1], [1, 1], [1, -1], [-1, -1]]
end