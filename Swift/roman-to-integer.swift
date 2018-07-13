class Solution {
    func romanToInt1(_ s: String) -> Int {
        var dict = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000, "IV": 4, "IX": 9, "XL": 40, "XC": 90, "CD": 400, "CM": 900]
        var s = s
        var res = 0
        
        while s.count > 0 {
            let char = s.removeLast()
            
            if let lastChar = s.last, let value = dict[String(lastChar) + String(char)] {
                s.removeLast()
                res += value
            } else if let value = dict[String(char)] {
                res += value
            }
        }
        
        return res
    }
    
    func romanToInt2(_ s: String) -> Int {
        var dict = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var chars = [Character](s.reversed())
        var res = 0
        
        for i in 0..<chars.count {
            guard let value = dict[String(chars[i])] else {
                return res
            }
            
            if i > 0, let preValue = dict[String(chars[i - 1])], value < preValue {
                res -= value
            } else {
                res += value
            }
        }
        
        return res
    }
}
