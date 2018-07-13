class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        func reverseInteger(_ x: Int) -> Int {
            var x = x
            var res = 0
            while x != 0 {
                res = res * 10 + x % 10
                x /= 10
            }
            return res
        }
        
        if x < 0 || x != reverseInteger(x) {
            return false
        }
        return true
    }
}
