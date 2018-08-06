class Solution {
    func titleToNumber(_ s: String) -> Int {
        var res = 0
        let valueA = "A".unicodeScalars.first!.value
        
        for scalar in s.unicodeScalars {
            res = res * 26 + Int(scalar.value - valueA) + 1
        }
        
        return res
    }
}
