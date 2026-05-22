# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
    coords = {
        x: 0,
        y: 0
    }
    for i in 0..moves.length - 1
        if (moves[i] == 'U')
            coords[:y] += 1
        elsif (moves[i] == 'D')
            coords[:y] -= 1
        elsif (moves[i] == 'L')
            coords[:x] -= 1
        elsif (moves[i] == 'R')
            coords[:x] += 1   
        end
    end
    return coords[:x] == 0 && coords[:y] == 0
end