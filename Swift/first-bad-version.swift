class Solution {
    func firstBadVersion(_ n: Int) {
        var left = 1
        var right = n

        while left <= right {
            let mid = left + (right - left) / 2
            if isBadVersion(mid) {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }

        return left
    }
}
