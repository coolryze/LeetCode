class Solution:
    def maxAreaOfIsland(self, grid):
        """
        :type grid: List[List[int]]
        :rtype: int
        """
        maxArea = 0

        for i in range(len(grid)):
            for j in range(len(grid[0])):
                if grid[i][j] == 1:
                    maxArea = max(maxArea, self.dfs(grid, i, j))

        return maxArea

    def dfs(self, grid, i, j):
        if i < 0 or i >= len(grid) or j < 0 or j >= len(grid[0]) or grid[i][j] == 0:
            return 0

        temMaxArea = 1
        grid[i][j] = 0
        temMaxArea = temMaxArea + self.dfs(grid, i - 1, j) + self.dfs(grid, i + 1, j) + self.dfs(grid, i, j - 1) + self.dfs(grid, i, j + 1)
        return temMaxArea
