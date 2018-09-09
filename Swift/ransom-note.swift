class Solution {
    func canConstruct1(_ ransomNote: String, _ magazine: String) -> Bool {
        guard magazine.count >= ransomNote.count else {
            return false
        }
        var dict = [Character: Int]()

        for char in magazine {
            if let count = dict[char] {
                dict[char] = count + 1
            } else {
                dict[char] = 1
            }
        }

        for char in ransomNote {
            if let count = dict[char], count > 0 {
                dict[char] = count - 1
            } else {
                return false
            }
        }

        return true
    }

    func canConstruct2(_ ransomNote: String, _ magazine: String) -> Bool {
        guard magazine.count >= ransomNote.count else {
            return false
        }
        var magazine = magazine

        for char in ransomNote {
            if let index = magazine.index(of: char) {
                magazine.remove(at: index)
            } else {
                return false
            }
        }

        return true
    }
}
