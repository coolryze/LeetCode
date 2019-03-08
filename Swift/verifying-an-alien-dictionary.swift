class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        let words = words.map { Array($0) }
        var lookup = [Character: Int]()
        for (index, char) in order.enumerated() {
            lookup[char] = index
        }

        for i in 0..<words.count - 1 {
            let word1 = words[i]
            let word2 = words[i + 1]

            var isBreak = false
            for k in 0..<(min(word1.count, word2.count)) {
                if word1[k] != word2[k] {
                    if lookup[word1[k]]! > lookup[word2[k]]! {
                        return false
                    } else {
                        isBreak = true
                        break
                    }
                }
            }

            if !isBreak && word1.count > word2.count {
                return false
            }
        }

        return true
    }
}
