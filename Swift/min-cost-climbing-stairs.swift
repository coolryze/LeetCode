class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var dp = [0, 0, 0]

        for i in Array(0..<cost.count).reversed() {
            dp[i%3] = cost[i] + min(dp[(i+1)%3], dp[(i+2)%3])
        }

        return min(dp[0], dp[1])
    }
}
