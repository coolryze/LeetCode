class Solution {
    func hammingDistance1(_ x: Int, _ y: Int) -> Int {
        var x = x
        var y = y
        var res = 0

        while x != 0 || y != 0 {
            if x != 0 && y != 0 {
                let x1 = x & 0b1
                let y1 = y & 0b1
                res = (x1 ^ y1) == 1 ? res + 1 : res
                x >>= 1
                y >>= 1
            } else if x == 0 {
                res = (y & 0b1) == 1 ? res + 1 : res
                y >>= 1
            } else if y == 0 {
                res = (x & 0b1) == 1 ? res + 1 : res
                x >>= 1
            }
        }

        return res
    }

    func hammingDistance2(_ x: Int, _ y: Int) -> Int {
        var z = x ^ y
        var res = 0

        while z > 0 {
            res = z & 1 == 1 ? res + 1 : res
            z = z >> 1
        }

        return res
    }
}
