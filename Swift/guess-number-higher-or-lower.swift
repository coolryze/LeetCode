class Solution {
    func guessNumber(_ n: Int) -> Int {
        var left = 1
        var right = n

        while left <= right {
            let mid = left + (right - left) / 2
            switch guess(mid) {
            case 0:
                return mid
            case 1:
                right = mid - 1
            case -1:
                left = mid + 1
            default:
                break
            }
        }

        fatalError("no valid outputs")
    }
}
