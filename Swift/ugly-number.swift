class Solution {
    func isUgly1(_ num: Int) -> Bool {
        guard num > 0 else {
            return false
        }
        var num = num

        while num != 1 {
            if num % 2 == 0 {
                num /= 2
            } else if num % 3 == 0 {
                num /= 3
            } else if num % 5 == 0 {
                num /= 5
            } else {
                return false
            }
        }

        return true
    }

    func isUgly2(_ num: Int) -> Bool {
        guard num > 0 else {
            return false
        }
        var num = num

        for i in [2, 3, 5] {
            while num % i == 0 {
                num /= i
            }
        }

        return num == 1
    }
}
