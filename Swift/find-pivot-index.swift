class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        let totalSum = nums.reduce(into: 0, { $0 += $1 })
        var leftSum = 0

        for (i, num) in nums.enumerated() {
            if leftSum == totalSum - leftSum - num {
                return i
            }
            leftSum += num
        }

        return -1
    }
}
