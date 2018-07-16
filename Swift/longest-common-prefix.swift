class Solution {
    func longestCommonPrefix1(_ strs: [String]) -> String {
        let count = strs.count
        
        if count == 0 {
            return ""
        }
        if count == 1 {
            return strs[0]
        }
        
        var res = strs[0]
        for i in 1..<count {
            while !strs[i].hasPrefix(res) {
                res = String(res.prefix(res.count - 1))
                if res.count == 0 {
                    return ""
                }
            }
        }
        
        return res
    }
    
    func longestCommonPrefix2(_ strs: [String]) -> String {
        var res = [Character]()
        
        guard let firstStr = strs.first else {
            return String(res)
        }
        
        let firstStrChars = Array(strs[0])
        let strsChars = strs.map{ Array($0) }
        
        for i in 0..<firstStr.count {
            res.append(firstStrChars[i])
            
            for str in strsChars.dropFirst() {
                if i >= str.count || str[i] != res[i] {
                    return String(res.dropLast())
                }
            }
        }
        
        return String(res)
    }
}
