# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  pairs_num = 0
  grid.each_index do | row |
    grid[row].each_index do | col |
      is_equal = 1
      for i in (0...grid.length)
        if (grid[row][i] != grid[i][col])
          is_equal = 0
          break
        end
      end
      pairs_num += is_equal
    end
  end
  return pairs_num
end