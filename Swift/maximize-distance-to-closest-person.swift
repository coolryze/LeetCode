class Solution {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        var prev = -1
        var res = 1

        for (i, v) in seats.enumerated() {
            if v == 1 {
                if prev < 0 {
                    res = i
                } else {
                    res = max(res, (i - prev) / 2)
                }
                prev = i
            }
        }

        return max(res, seats.count - 1 - prev)
    }
}
