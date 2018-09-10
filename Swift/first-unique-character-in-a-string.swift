class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character: Bool]()
        
        for char in s.characters {
            if let isDup = dict[char] {
                dict[char] = true
            } else {
                dict[char] = false
            }
        }
        
        for (i, char) in Array(s.characters).enumerated() {
            if !dict[char]! {
                return i
            }
        }
        
        return -1
    }
}
