class Solution {
    func lengthOfLastWord1(_ s: String) -> Int {
        var res = 0
        
        for char in s.reversed() {
            if char == " " {
                if res != 0 {
                    break
                }
            } else {
                res += 1
            }
        }
        
        return res
    }
    
    func lengthOfLastWord2(_ s: String) -> Int {
        let words = s.split(separator: " ")
        return words.last?.count ?? 0
    }
}
