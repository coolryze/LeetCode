class Solution {
    func rob(_ nums: [Int]) -> Int {
        var res = 0
        var prev = 0

        for num in nums {
            (res, prev) = (max(prev + num, res), res)
        }

        return res
    }
}
