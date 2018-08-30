class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        let chars = [Character](pattern)
        let words = str.split { $0 == " "}.map(String.init)

        guard chars.count == words.count else {
            return false
        }
        var dict = [Character: String]()

        for (index, char) in chars.enumerated() {
            let currentWord = words[index]
            if let word = dict[char] {
                if word != currentWord {
                    return false
                }
            } else {
                if dict.values.contains(currentWord) {
                    return false
                } else {
                    dict[char] = currentWord
                }
            }
        }

        return true
    }
}
