class Solution {
    func findLHS(_ nums: [Int]) -> Int {
        var lookup = [Int: Int]()
        var res = 0

        for num in nums {
            if let count = lookup[num] {
                lookup[num] = count + 1
            } else {
                lookup[num] = 1
            }
            for diff in [-1, 1] {
                if let count = lookup[num + diff] {
                    res = max(res, lookup[num]! + count)
                }
            }
        }

        return res
    }
}
