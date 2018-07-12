class Solution {
    func reverse(_ x: Int) -> Int {
        var x = x
        var res = 0
        
        while x != 0 {
            res = res * 10 + x % 10
            x /= 10
        }
        
        return res > Int32.max || res < Int32.min ? 0 : res
    }
}
