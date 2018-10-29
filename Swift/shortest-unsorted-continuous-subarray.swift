class Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return 0
        }
        let sortedNums = nums.sorted()
        var p = -1, q = -1

        for (index, value) in zip(nums, sortedNums).enumerated() {
            if value.0 != value.1 {
                p == -1 ? (p = index) : (q = index + 1)
            }
        }
        /*
        for index in 0..<nums.count {
            if nums[index] != sortedNums[index] {
                p == -1 ? (p = index) : (q = index + 1)
            }
        }
        */

        return q - p
    }
}
