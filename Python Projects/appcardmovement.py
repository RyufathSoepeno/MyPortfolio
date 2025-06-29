def solution(cards, moves, query):
    from collections import defaultdict

    # Create a mapping from card ID to its (row, col) position
    card_positions = {}
    # Create a mapping from (row, col) to card ID
    board = defaultdict(dict)

    for cid, row, col in cards:
        card_positions[cid] = [row, col]
        board[col][row] = cid

    def shift_column_up(col, from_row):
        # Remove the card and shift others up
        rows = sorted([r for r in board[col].keys() if r > from_row])
        for r in rows:
            cid = board[col][r]
            board[col][r - 1] = cid
            card_positions[cid][0] -= 1
            del board[col][r]
        del board[col][from_row]

    def shift_column_down(col, start_row):
        # Push down all cards starting from start_row
        rows = sorted([r for r in board[col].keys() if r >= start_row], reverse=True)
        for r in rows:
            cid = board[col][r]
            board[col][r + 1] = cid
            card_positions[cid][0] += 1
            del board[col][r]

    for cid, from_r, from_c, to_r, to_c in moves:
        # 1. Shift the origin column up
        shift_column_up(from_c, from_r)

        # 2. If there's a card at the destination, shift that column down
        if to_r in board[to_c]:
            shift_column_down(to_c, to_r)

        # 3. Move the card
        board[to_c][to_r] = cid
        card_positions[cid] = [to_r, to_c]

    return card_positions[query]
