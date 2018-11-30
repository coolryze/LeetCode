class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var image = image
        if image[sr][sc] != newColor {
            self.dfs(image: &image, i: sr, j: sc, c0: image[sr][sc], c1: newColor)
        }
        
        return image
    }

    private func dfs( image:inout [[Int]],i:Int,j:Int,c0:Int,c1:Int) {
        if i < 0 || j < 0 || i >= image.count || j >= image[0].count || image[i][j] != c0 {
            return
        }
        image[i][j] = c1
        dfs(image: &image, i: i, j: j - 1, c0: c0, c1: c1)
        dfs(image: &image, i: i, j: j + 1, c0: c0, c1: c1)
        dfs(image: &image, i: i - 1, j: j, c0: c0, c1: c1)
        dfs(image: &image, i: i + 1, j: j, c0: c0, c1: c1)
    }
}
