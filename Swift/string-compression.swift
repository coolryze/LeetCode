class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var index = 0
        var currentCount = 0

        for i in 0..<chars.count {
            currentCount += 1

            if i + 1 == chars.count || chars[i] != chars[i + 1] {
                chars[index] = chars[i]

                if currentCount != 1 {
                    chars.replaceSubrange(index + 1...index + String(currentCount).count, with: Array(String(currentCount)))
                }

                index += (currentCount == 1 ? 1 : String(currentCount).count + 1)
                currentCount = 0
            }
        }

        return index
    }
}
