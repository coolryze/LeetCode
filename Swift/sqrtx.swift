class Solution {
    func mySqrt1(_ x: Int) -> Int {
        guard x >= 1 else {
            return 0
        }
        var left = 1
        var right = x
        var mid = (left + right) / 2
        
        while left != mid && right != mid {
            if mid * mid < x {
                left = mid
            } else if mid * mid > x {
                right = mid
            } else {
                return mid
            }
            mid = (left + right) / 2
        }
        return mid
    }
    
    func mySqrt2(_ x: Int) -> Int {
        var left = 0
        var right = x / 2 + 1
        var mid = 0
        
        while left <= right {
            mid = (right - left) / 2 + left
            if mid * mid < x {
                left = mid + 1
            } else if mid * mid > x {
                right = mid - 1
            } else {
                return mid
            }
        }
        return right
    }
}
