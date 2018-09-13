class Solution {
    func findNthDigit(_ n: Int) -> Int {
        var n = n
        var len = 1
        var x = 9

        while n > len * x {
            n -= len * x
            len += 1
            x *= 10
        }

        let indexAtNums = (n - 1) / len
        let indexAtNum = (n - 1) % len
        let num = Int(pow(10, Double(len) - 1)) + indexAtNums
        var res = num / Int(pow(10, Double(len - 1 - indexAtNum)))
        res %= 10

        return res
    }
}
