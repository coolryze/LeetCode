class Solution {
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        return getResultString(s: S) == getResultString(s: T)
    }

    private func getResultString(s: String) -> String {
        var chars = Array(s)
        var res = Array<Character>()
        var skip = 0

        for i in Array(0..<chars.count).reversed() {
            if chars[i] == "#" {
                skip += 1
            } else if skip > 0 {
                skip -= 1
            } else {
                res.insert(chars[i], at: 0)
            }
        }

        return String(res)
    }
}
