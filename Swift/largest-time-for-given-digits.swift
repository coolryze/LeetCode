class Solution {
    func largestTimeFromDigits(_ A: [Int]) -> String {
        var res = -1

        for i in 0..<4 {
            for j in 0..<4 {
                if j != i {
                    for k in 0..<4 {
                        if k != i && k != j {
                            let l = 6 - i - j - k
                            let hour = 10 * A[i] + A[j]
                            let min = 10 * A[k] + A[l]
                            if hour < 24 && min < 60 {
                                res = max(res, hour * 60 + min)
                            }
                        }
                    }
                }
            }
        }

        return  res >= 0 ? String(format: "%02d:%02d", res / 60, res % 60) : ""
    }
}
