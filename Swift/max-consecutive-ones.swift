class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var res = 0
        var i = 0

        for num in nums {
            i = num == 1 ? i + 1 : 0
            res = max(res, i)
        }

        return res
    }
}
