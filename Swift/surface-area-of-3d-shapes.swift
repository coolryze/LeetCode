class Solution {
    func surfaceArea(_ grid: [[Int]]) -> Int {
        var res = 0

        for i in 0..<grid.count {
            for j in 0..<grid.count {
                if grid[i][j] != 0 {
                    res += (2 + grid[i][j] * 4)
                }
                if i != 0 {
                    res -= (min(grid[i][j], grid[i-1][j]) * 2)
                }
                if j != 0 {
                    res -= (min(grid[i][j], grid[i][j-1]) * 2)
                }
            }
        }

        return res
    }
}
