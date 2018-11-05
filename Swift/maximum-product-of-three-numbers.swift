class Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
        var max1 = Int.min, max2 = Int.min, max3 = Int.min
        var min1 = Int.max, min2 = Int.max

        for num in nums {
            if num >= max1 {
                max3 = max2
                max2 = max1
                max1 = num
            } else if num >= max2 {
                max3 = max2
                max2 = num
            } else if num >= max3 {
                max3 = num
            }

            if num <= min1 {
                min2 = min1
                min1 = num
            } else if num <= min2 {
                min2 = num
            }
        }

        return max(max1 * max2 * max3, max1 * min2 * min1)
    }
}
