class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character: Bool]()

        for char in s {
            if dict[char] != nil {
                dict[char] = true
            } else {
                dict[char] = false
            }
        }

        for (i, char) in Array(s).enumerated() {
            if !dict[char]! {
                return i
            }
        }

        return -1
    }
}
