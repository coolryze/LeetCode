class Solution {
    func reverseWords(_ s: String) -> String {
        let words = s.split(separator: " ")
        var res = ""

        for (i, word) in words.enumerated() {
            res += String(word.reversed())
            if i != words.count - 1 {
                res += " "
            }
        }

        return res
    }
}
