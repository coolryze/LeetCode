class Solution:
    def islandPerimeter(self, grid):
        """
        :type grid: List[List[int]]
        :rtype: int
        """
        landCount = 0
        neighborCount = 0

        for i in range(len(grid)):
            for j in range(len(grid[i])):
                if grid[i][j] == 1:
                    landCount += 1
                    if i < len(grid) - 1 and grid[i + 1][j] == 1:
                        neighborCount += 1
                    if j < len(grid[i]) - 1 and grid[i][j + 1] == 1:
                        neighborCount += 1

        return landCount * 4 - neighborCount * 2
