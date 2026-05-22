# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
    perimeter = 0
    for i in 0...grid.length
        for j in 0...grid[i].length
            if grid[i][j] == 0
                next
            elsif grid[i][j] == 1
                perimeter += 4
                if i - 1 >= 0 && grid[i - 1][j] == 1
                    perimeter -= 1
                end
                if i + 1 <= grid.length - 1 && grid[i + 1][j] == 1
                    perimeter -= 1
                end
                if j - 1 >= 0 && grid[i][j - 1] == 1
                    perimeter -= 1
                end
                if j + 1 <= grid[i].length && grid[i][j + 1] == 1
                    perimeter -= 1
                end
            end
        end
    end
    return perimeter
end