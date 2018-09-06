class Solution {
    func isPerfectSquare1(_ num: Int) -> Bool {
        var x = 0

        while x * x != num {
            if x * x > num {
                return false
            } else {
                x += 1
            }
        }

        return true
    }

    func isPerfectSquare2(_ num: Int) -> Bool {
        var left = 0
        var right = num

        while left <= right {
            let mid = left + (right - left) / 2
            if mid * mid >= num {
                right = mid - 1
            } else if mid * mid < num {
                left = mid + 1
            }
        }

        return left * left == num
    }

    func isPerfectSquare3(_ num: Int) -> Bool {
        var i = 1
        var num = num

        while num > 0 {
            num -= i
            i += 2
        }

        return num == 0
    }
}
