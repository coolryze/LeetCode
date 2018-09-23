class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        var res = [Int]()
        var sChars = [Character](s)

        var counts = [Int](repeating: 0, count: 26)
        for char in p {
            counts[getHash(char)] += 1
        }

        var left = 0
        var right = 0

        while right < sChars.count {
            counts[getHash(sChars[right])] -= 1
            while left <= right && counts[getHash(sChars[right])] < 0 {
                counts[getHash(sChars[left])] += 1
                left += 1
            }
            if right - left + 1 == p.count {
                res.append(left)
            }
            right += 1
        }

        return res
    }

    func getHash(_ c: Character) -> Int {
        return Int(c.unicodeScalars.first!.value) - Int("a".unicodeScalars.first!.value)
    }
}
