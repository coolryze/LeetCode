class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let hCount = haystack.count
        let nCount = needle.count
        
        if nCount == 0 {
            return 0
        }
        if hCount < nCount {
            return -1
        }
        
        for i in 0...hCount-nCount {
            let start = haystack.index(haystack.startIndex, offsetBy: i)
            let end = haystack.index(haystack.startIndex, offsetBy: i+nCount)
            if String(haystack[start..<end]) == needle {
                return i
            }
        }
        
        return -1
    }
}
