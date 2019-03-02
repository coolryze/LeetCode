class Solution {
    func diStringMatch(_ S: String) -> [Int] {
        var res = [Int]()
        var left = 0
        var right = S.count

        for c in S {
            if c == "I" {
                res.append(left)
                left += 1
            } else {
                res.append(right)
                right -= 1
            }
        }
        res.append(left)

        return res
    }
}
