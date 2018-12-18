class Solution {
    func rotatedDigits(_ N: Int) -> Int {
        let invalid: Set<Character> = Set(["3", "4", "7"])
        let diff: Set<Character> = Set(["2", "5", "6", "9"])
        var res = 0

        for i in 1...N {
            let lookup = Set(Array(String(i)))

            if lookup.isDisjoint(with: invalid) && !lookup.isDisjoint(with: diff) {
                res += 1
            }
        }

        return res
    }
}
