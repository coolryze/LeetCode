class Solution {
    func isAnagram1(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }

        var dict = [Character: Int]()
        for char in s {
            if let value = dict[char] {
                dict[char] = value + 1
            } else {
                dict[char] = 1
            }
        }

        for char in t {
            if let value = dict[char] {
                let newValue = value - 1
                if newValue == 0 {
                    dict.removeValue(forKey: char)
                } else {
                    dict[char] = newValue
                }
            } else {
                return false
            }
        }

        return dict.count == 0
    }

    func isAnagram2(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }

        return sortStr(s) == sortStr(t)
    }

    private func sortStr(_ s: String) -> [Character] {
        var sChars = [Character](s)
        sChars.sort{ $0 < $1 }
        return sChars
    }
}
