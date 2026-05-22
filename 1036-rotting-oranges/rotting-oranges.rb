# @param {Integer[][]} grid
# @return {Integer}
def oranges_rotting(grid)
    minutes = 0
    queue = Queue.new

    # Add all rotten oranges
    for i in 0...grid.length
        for j in 0...grid[i].length
            if grid[i][j] == 2
                queue.enq({ row: i, col: j })
            end
        end
    end

    while !queue.empty?
        size = queue.size
        changed = false

        size.times do
            curr = queue.deq
            r = curr[:row]
            c = curr[:col]

            [[r-1,c],[r+1,c],[r,c-1],[r,c+1]].each do |nr, nc|
                if nr >= 0 && nr < grid.length &&
                   nc >= 0 && nc < grid[0].length &&
                   grid[nr][nc] == 1

                    grid[nr][nc] = 2
                    queue.enq({ row: nr, col: nc })
                    changed = true
                end
            end
        end

        minutes += 1 if changed
    end

    # Check remaining fresh
    for i in 0...grid.length
        for j in 0...grid[i].length
            return -1 if grid[i][j] == 1
        end
    end

    minutes
end