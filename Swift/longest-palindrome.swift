class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var dict = [Character: Int]()
        var res = 0

        for char in s {
            if let count = dict[char] {
                if count == 1 {
                    dict[char] = 0
                    res += 2
                } else {
                    dict[char] = count + 1
                }
            } else {
                dict[char] = 1
            }
        }

        if dict.contains(where: {$0.value > 0 }) {
            res += 1
        }

        return res
    }
}
