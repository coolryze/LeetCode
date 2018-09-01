class Solution {
    func isPowerOfFour1(_ num: Int) -> Bool {
        var x = 1

        while x != num {
            if x < num {
                x <<= 2
            } else {
                return false
            }
        }

        return true
    }

    func isPowerOfFour2(_ num: Int) -> Bool {
        return num > 0 && (num & (num - 1)) == 0 && (num & 0b01010101010101010101010101010101) == num
    }
}
