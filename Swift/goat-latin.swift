class Solution {
    func toGoatLatin(_ S: String) -> String {
        let vowelSet = Set<Character>(["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"])
        var charsArr = S.split(separator: " ").map { Array($0) }
        let ma: [Character] = ["m", "a"]
        let a: Character = "a"

        for (i, var chars) in charsArr.enumerated() {
            if !vowelSet.contains(chars[0]) {
                let firstChar = chars.remove(at: 0)
                chars.append(firstChar)
            }
            chars.append(contentsOf: ma)
            chars.append(contentsOf: Array(repeating: a, count: i + 1))

            charsArr[i] = chars
        }

        return charsArr.map { String($0) }.joined(separator: " ")
    }
}
