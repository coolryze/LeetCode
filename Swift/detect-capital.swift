class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        var capitalNum = 0
        word.forEach { if isUpperCased($0) { capitalNum += 1} }

        return capitalNum == 0 || (capitalNum == 1 && isUpperCased(word.first!)) || capitalNum == word.count
    }

    private func isUpperCased(_ c: Character) -> Bool {
        return String(c).uppercased() == String(c)
    }
}
