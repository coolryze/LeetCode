class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var sum = 0, carry = 0, res = ""
        let aChars = Array(a), bChars = Array(b)
        var i = aChars.count - 1, j = bChars.count - 1
        
        while i >= 0 || j >= 0 || carry > 0 {
            sum = carry
            if i >= 0 {
                sum += Int(String(aChars[i]))!
                i -= 1
            }
            if j >= 0 {
                sum += Int(String(bChars[j]))!
                j -= 1
            }
            carry = sum / 2
            sum = sum % 2
            res = String(sum) + res
        }
        
        return res
    }
}
