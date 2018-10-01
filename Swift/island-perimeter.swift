class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var landCount = 0
        var neighborCount = 0

        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    landCount += 1
                    if i < grid.count - 1 && grid[i + 1][j] == 1 {
                        neighborCount += 1
                    }
                    if j < grid[i].count - 1 && grid[i][j + 1] == 1 {
                        neighborCount += 1
                    }
                }
            }
        }

        return landCount * 4 - neighborCount * 2
    }
}
