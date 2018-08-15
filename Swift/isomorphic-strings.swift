class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var stDict = [Character: Character]()
        var tsDict = [Character: Character]()
        let sChars = [Character](s)
        let tChars = [Character](t)

        for i in 0..<s.count {
            let sCurrent = sChars[i]
            let tCurrent = tChars[i]

            if stDict[sCurrent] == nil && tsDict[tCurrent] == nil {
                stDict[sCurrent] = tCurrent
                tsDict[tCurrent] = sCurrent
            } else if stDict[sCurrent] != tCurrent || tsDict[tCurrent] != sCurrent {
                return false
            }
        }

        return true
    }
}
