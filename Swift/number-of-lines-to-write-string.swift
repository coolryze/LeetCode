class Solution {
    func numberOfLines(_ widths: [Int], _ S: String) -> [Int] {
        let maxCount = 100
        var line = 1
        var count = 0

        for char in S {
            let index = Int(char.unicodeScalars.first!.value) - 97
            let value = widths[index]
            if count + value <= maxCount {
                count += value
            } else {
                line += 1
                count = 0
                count += value
            }
        }

        return [line, count]
    }
}
