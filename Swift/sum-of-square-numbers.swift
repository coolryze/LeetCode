class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        for a in 0...Int(sqrt(Double(c))) {
            let b = Int(sqrt(Double(c - a * a)))
            if a * a + b * b == c {
                return true
            }
        }

        return false
    }
}
