class Solution {
    func minMoves(_ nums: [Int]) -> Int {
        let min = nums.min()!

        return nums.reduce(0) { total, num in total + num - min }
    }
}
