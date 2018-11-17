class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var array = grid
        var maxArea = 0

        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 1 {
                    maxArea = max(maxArea, dfs(&array, i: i, j: j))
                }
            }
        }

        return maxArea
    }

    private func dfs(_ grid:inout [[Int]], i: Int, j: Int) -> Int {
        if i < 0 || i >= grid.count || j < 0 || j >= grid[0].count || grid[i][j] == 0 {
            return 0
        }

        var temMaxArea = 1
        grid[i][j] = 0
        temMaxArea = temMaxArea + dfs(&grid, i: i-1, j: j) + dfs(&grid, i: i+1, j: j) + dfs(&grid, i: i, j: j-1) + dfs(&grid, i: i, j: j+1)

        return temMaxArea
    }
}
