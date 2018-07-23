class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let words = s.split(separator: " ")
        return words.last?.count ?? 0
    }
}
