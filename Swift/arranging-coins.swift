class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var left = 1
        var right = n

        while left <= right {
            let mid = left + (right - left) / 2
            if n * 2 < mid * (mid + 1) {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }

        return left - 1
    }
}
