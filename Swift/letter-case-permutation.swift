class Solution {
    func letterCasePermutation(_ S: String) -> [String] {
        var res: [[String]] = [[]]

        for char in S {
            if isAlpha(char) {
                for i in 0..<res.count {
                    res.append(res[i])
                    res[i].append(String(char).lowercased())
                    res[res.count-1].append(String(char).uppercased())
                }
            } else {
                for (i, var s) in res.enumerated() {
                    s.append(String(char))
                    res[i] = s
                }
            }
        }

        return res.map { $0.joined() }
    }

    private func isAlpha(_ char: Character) -> Bool {
        if let value = char.unicodeScalars.first?.value {
            if (value > 64 && value < 91) || (value > 96 && value < 123) {
                return true;
            }
        }
        return false;
    }
}
