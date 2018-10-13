class Solution {
    func convertToBase7(_ num: Int) -> String {
        if num < 0 {
            return "-" + convertToBase7(-num)
        }

        var res = ""
        var num = num

        while num >= 7 {
            res = String(num % 7) + res
            num /= 7
        }
        res = String(num) + res

        return res
    }
}
