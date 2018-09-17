class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var firstMax = Int.min
        var secondMax = Int.min
        var thirdMax = Int.min
        var count = 0

        for num in nums {
            if num > firstMax {
                (thirdMax, secondMax, firstMax) = (secondMax, firstMax, num)
                count += 1
            } else if num != firstMax && num > secondMax {
                (thirdMax, secondMax) = (secondMax, num)
                count += 1
            } else if num != firstMax && num != secondMax && num > thirdMax {
                thirdMax = num
                count += 1
            }
        }

        if count < 3 {
            return firstMax
        }

        return thirdMax
    }
}
