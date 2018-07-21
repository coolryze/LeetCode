class Solution {
    func countAndSay(_ n: Int) -> String {
        if n <= 0 {
            return ""
        }
        
        var res = "1"
        
        for _ in 1..<n {
            var temp = ""
            var count = 1
            var chars = [Character](res)
            var current = chars[0]
            
            for i in 1..<chars.count {
                if chars[i] == current {
                    count += 1
                } else {
                    temp.append("\(count)")
                    temp.append(current)
                    count = 1
                    current = chars[i]
                }
            }
            temp.append("\(count)")
            temp.append(current)
            res = temp
        }
        
        return res
    }
}
