class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxCurrent = nums[0]
        var maxGlobal = nums[0]
        
        for i in 1..<nums.count {
            maxCurrent = max(maxCurrent + nums[i], nums[i])
            maxGlobal = max(maxCurrent, maxGlobal)
        }
        
        return maxGlobal
    }
}
