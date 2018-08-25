class Solution {
    func addDigits1(_ num: Int) -> Int {
        var num = num

        while num >= 10 {
            var x = 0
            while num > 0 {
                x += num % 10
                num /= 10
            }
            num = x
        }

        return num
    }

    func addDigits2(_ num: Int) -> Int {
        return num > 0 ? (num - 1) % 9 + 1 : 0
    }
}
