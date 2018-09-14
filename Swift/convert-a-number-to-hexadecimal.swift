class Solution {
    func toHex(_ num: Int) -> String {
        if num == 0 {
            return "0"
        }

        let map = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
        var num = num
        var res = ""
        var i = 0

        while num != 0 && i < 8 {
            res = map[num & 0b1111] + res
            num >>= 4
            i += 1
        }

        return res
    }
}
