class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var res = [Int]()

        for i in left...right {
            if i % 10 != 0 && isSelfDividingNumber(i) {
                res.append(i)
            }
        }

        return res
    }

    private func isSelfDividingNumber(_ num: Int) -> Bool {
        var n = num

        while n > 0 {
            if n % 10 != 0 && num % (n % 10) == 0 {
                n /= 10
            } else {
                return false
            }
        }

        return true
    }
}
