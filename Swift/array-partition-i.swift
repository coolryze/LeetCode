class Solution {
    func arrayPairSum1(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        var res = 0

        for (i, num) in nums.enumerated() {
            if i % 2 == 0 {
                res += num
            }
        }

        return res
    }

    func arrayPairSum2(_ nums: [Int]) -> Int {
        return nums.sorted().enumerated()
            .compactMap { $0 % 2 == 0 ? $1 : nil }
            .reduce(0) { $0 + $1 }
    }
}
