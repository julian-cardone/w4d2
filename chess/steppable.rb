class Steppable
    def moves
        result = []
        self.move_diffs.each do |diff|
            dx, dy = diff
            board = self.board
            pos = self.pos
            next_pos = [pos[0] + dx, pos[1] + dy]
            if board.valid_pos?(next_pos)
                if board[next_pos] == nil #NullPiece
                    result << next_pos
                else
                    if board[next_pos].color == self.color
                        next
                    else
                        result << next_pos
                        next
                    end
                end
            end
        end
        result
    end

    private
    def move_diffs
    end
end