class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var maxSum = 0
        var currentSum = 0

        for i in 0..<k {
            currentSum += nums[i]
        }
        maxSum = currentSum

        for i in k..<nums.count {
            currentSum -= nums[i - k]
            currentSum += nums[i]
            maxSum = max(currentSum, maxSum)
        }

        return Double(maxSum) / Double(k)
    }
}
