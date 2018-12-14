class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        let setJ = Set(J)
        var res = 0

        for c in S {
            if setJ.contains(c) {
                res += 1
            }
        }

        return res
    }
}
