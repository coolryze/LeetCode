class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b

        while b != 0 {
            (a, b) = (a ^ b, (a & b) << 1)
        }

        return a
    }
}
