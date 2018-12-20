class Solution {
    func rotateString(_ A: String, _ B: String) -> Bool {
        guard A != B else {
            return true
        }
        guard A.count == B.count else {
            return false
        }

        var a = A

        for _ in 0..<A.count-1 {
            a.append(a.removeFirst())
            if a == B {
                return true
            }
        }

        return false
    }
}
