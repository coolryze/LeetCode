class Solution {
    func findWords(_ words: [String]) -> [String] {
        let rowOne = "qwertyuiop"
        let rowTwo = "asdfghjkl"
        let rowThree = "zxcvbnm"

        return words.filter { contain(rowOne, $0) || contain(rowTwo, $0) || contain(rowThree, $0) }
    }

    private func contain(_ str: String, _ word: String) -> Bool {
        return word.lowercased().filter { !str.contains($0) }.count == 0
    }
}
