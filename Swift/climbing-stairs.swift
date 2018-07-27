class Solution {
    func climbStairs(_ n: Int) -> Int {
        var prev = 0
        var current = 1
        
        for _ in 0..<n {
            let temp = prev
            prev = current
            current = temp + current
        }
        
        return current
    }
}
