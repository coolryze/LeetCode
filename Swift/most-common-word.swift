class Solution {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        let bannedSet = Set(banned)
        let punctuationSet = Set<Character>(["!", "?", ",", ".", "'", ";"])
        var words = (paragraph.lowercased().filter { !punctuationSet.contains($0) }).split(separator: " ").map { String($0) }
        words = words.filter { !bannedSet.contains($0) }
        var countDict = [String: Int]()

        var res = ""
        var maxCount = 0
        for word in words {
            var count = countDict[word] ?? 0
            count += 1
            countDict[word] = count
            if count >= maxCount {
                maxCount = count
                res = word
            }
        }

        return res
    }
}
