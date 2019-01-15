class Solution {
    func peakIndexInMountainArray(_ A: [Int]) -> Int {
        var left = 0
        var right = A.count

        while left < right {
            let mid = left + (right - left) / 2
            if A[mid] > A[mid + 1] {
                right = mid
            } else {
                left = mid + 1
            }
        }

        return left
    }
}
