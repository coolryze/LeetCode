class Solution {
    func uncommonFromSentences(_ A: String, _ B: String) -> [String] {
        let words = A.split(separator: " ").map { String($0) } + B.split(separator: " ").map { String($0) }
        var countDict = [String: Int]()

        for word in words {
            countDict[word] = (countDict[word] ?? 0) + 1
        }

        return countDict.filter { $0.value == 1 }.map { $0.key }
    }
}
