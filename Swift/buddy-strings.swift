class Solution {
    func buddyStrings(_ A: String, _ B: String) -> Bool {
        guard A.count == B.count else {
            return false
        }
        var diff = [(Character, Character)]()

        for (a, b) in zip(A, B) {
            if a != b {
                diff.append((a, b))
                if diff.count > 2 {
                    return false
                }
            }
        }

        return (diff.count == 0 && Set(Array(A)).count < A.count) ||
                (diff.count == 2 && diff[0] == (diff[1].1, diff[1].0))
    }
}
