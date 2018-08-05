class Solution {
    func convertToTitle(_ n: Int) -> String {
        var n = n
        var res = ""
        
        while n > 0 {
            let unicodeStr = UnicodeScalar(UInt32((n - 1) % 26) + UnicodeScalar("A")!.value)!
            res = String(unicodeStr) + res
            n = (n - 1) / 26
        }
        
        return res
    }
}
