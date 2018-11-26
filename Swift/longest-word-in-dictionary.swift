class Solution {
    func longestWord(_ words: [String]) -> String {
        let sortedWords = words.sorted()
        var set = Set([""])
        var res = ""

        print(sortedWords)

        for word in sortedWords {
            if set.contains(String(word.prefix(word.count-1))) {
                set.insert(word)
                if word.count > res.count {
                    res = word
                }
            }
        }

        return res
    }
}
