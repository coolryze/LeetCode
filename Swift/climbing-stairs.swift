class Solution {
    func climbStairs1(_ n: Int) -> Int {
        var prev = 0
        var current = 1
        
        for _ in 0..<n {
            let temp = prev
            prev = current
            current = temp + current
        }
        return current
    }
    
    func climbStairs2(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        if n == 2 {
            return 2
        }
        return climbStairs2(n-1) + climbStairs2(n-2)
    }
}
