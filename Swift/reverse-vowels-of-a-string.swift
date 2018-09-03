class Solution {
    func reverseVowels(_ s: String) -> String {
        let vowelsSet = Set<Character>(["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"])
        var chars = [Character](s)
        var left = 0
        var right = chars.count - 1

        while left < right {
            let charLeft = chars[left]
            let charRight = chars[right]
            if vowelsSet.contains(charLeft) && vowelsSet.contains(charRight) {
                chars[left] = charRight
                chars[right] = charLeft
                left += 1
                right -= 1
            } else if vowelsSet.contains(charLeft) {
                right -= 1
            } else if vowelsSet.contains(charRight) {
                left += 1
            } else {
                left += 1
                right -= 1
            }
        }

        return String(chars)
    }
}
