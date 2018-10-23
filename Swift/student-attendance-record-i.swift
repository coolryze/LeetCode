class Solution {
    func checkRecord(_ s: String) -> Bool {
        var recordACount = 0
        var chars = [Character](s)

        for (i, record) in chars.enumerated() {
            if record == "A" {
                recordACount += 1
                if recordACount == 2 {
                    return false
                }
            }
            if record == "L" && i < chars.count - 2 && chars[i+1] == record && chars[i+2] == record {
                return false
            }
        }

        return true
    }
}
