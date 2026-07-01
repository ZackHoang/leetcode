def bfs(grid, row, col)
  queue = Queue.new().push([row, col])
  while !queue.empty?
    curr_node = queue.pop
    r, c = curr_node[0], curr_node[1]
    if grid[r][c] == '1'
      grid[r][c] = '0'
      queue.push([r - 1, c]) if r - 1 >= 0 && grid[r - 1][c] == '1'
      queue.push([r + 1, c]) if r + 1 < grid.length && grid[r + 1][c] == '1'
      queue.push([r, c - 1]) if c - 1 >= 0 && grid[r][c - 1] == '1'
      queue.push([r, c + 1]) if c + 1 < grid[0].length && grid[r][c + 1] == '1'
    else
      next
    end
  end
end

# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  islands = 0
  grid.length.times do | i |
    grid[0].length.times do | j |
      if grid[i][j] == '1'
        bfs(grid, i, j)
        islands += 1
      end
    end
  end
  return islands
end