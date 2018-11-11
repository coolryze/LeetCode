class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var result = 0
        var count = 0

        for i in 0..<nums.count {
            if i == 0 || nums[i-1] < nums[i] {
                count += 1
                result = max(count, result)
            } else {
                count = 1
            }
        }

        return result
    }
}
