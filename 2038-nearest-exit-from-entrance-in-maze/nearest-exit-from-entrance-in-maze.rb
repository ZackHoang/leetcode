# @param {Character[][]} maze
# @param {Integer[]} entrance
# @return {Integer}
def nearest_exit(maze, entrance)
  rows, cols = maze.length, maze[0].length
  queue = Queue.new
  queue.push(entrance)

  maze[entrance[0]][entrance[1]] = "+"
  steps = 0

  directions = [[0, -1], [0, 1], [-1, 0], [1, 0]]

  until queue.empty?
    steps += 1

    queue.size.times do
      row, col = queue.pop

      directions.each do |dr, dc|
        next_row = row + dr
        next_col = col + dc

        if next_row >= 0 && next_row < rows &&
           next_col >= 0 && next_col < cols &&
           maze[next_row][next_col] == "."

          if next_row == 0 || next_row == rows - 1 ||
             next_col == 0 || next_col == cols - 1
            return steps
          end

          maze[next_row][next_col] = "+"
          queue.push([next_row, next_col])
        end
      end
    end
  end

  -1
end