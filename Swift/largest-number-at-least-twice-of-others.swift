class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var maxNum = Int.min
        var maxIndex = -1

        for (i, num) in nums.enumerated() {
            if num >= maxNum {
                maxNum = num
                maxIndex = i
            }
        }

        for (i, num) in nums.enumerated() {
            if maxIndex != i && maxNum < num * 2 {
                return -1
            }
        }

        return maxIndex
    }
}
