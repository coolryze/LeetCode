class Solution {
    func isLongPressedName(_ name: String, _ typed: String) -> Bool {
        var nameChars = Array(name)
        var typedChars = Array(typed)
        var i = 0

        for j in 0..<typedChars.count {
            if i < nameChars.count && nameChars[i] == typedChars[j] {
                i += 1
            } else if j == 0 || typedChars[j] != typedChars[j - 1] {
                return false
            }
        }

        return i == nameChars.count
    }
}
