class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var chars = [Character](s)
        var res = [Character]()

        for i in stride(from: 0, to: chars.count, by: 2 * k) {
            if chars.count < i + k {
                res += chars[i..<chars.count].reversed()
                break
            }

            res += chars[i..<i + k].reversed()

            if chars.count < i + 2 * k {
                res += chars[i + k..<chars.count]
                break
            }

            res += chars[i + k..<i + 2 * k]
        }

        return String(res)
    }
}
