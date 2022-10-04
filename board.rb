class Board

    def initialize
        @rows = Array.new(8){ Array.new(8) }
        @null_piece = NullPiece.new
        self.set_up_pieces
        self.set_up_null_pieces
    end

    private
    def set_up_pieces
        queen_pos = []
        rook_pos = []
        knight_pos = []
        queen_pos = []
        rook_pos = []
        knight_pos = []
        self[queen_pos] = Queen.new
        self[rook_pos] = Rook.new
        self[knight_pos] = Knight.new
        self[queen_pos] = Queen.new
        self[rook_pos] = Rook.new
        self[knight_pos] = Knight.new
    end

    private
    def set_up_null_pieces
        null_pieces_positions = []
        null_pieces_positions.each do |pos|
            self[pos] = NullPiece.new
        end
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(color, start_pos, end_pos)
        piece = self[start_pos]
        unless piece.is_a(NullPiece)
            moves = piece.moves
            end_positions = moves.map { |move| process(start_pos, move) }
            if end_positions.include?(end_pos)
                self[end_pos] = piece
            else
                raise "Can not move to #{end_pos}"
            end
        end
    end

    def valid_pos?(pos)
        row, col = pos
        row.between?(0,7) && col.between?(0,7)
    end

    def add_piece(piece, pos)
        self[pos] = piece
    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces
        
    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)
        
    end

end