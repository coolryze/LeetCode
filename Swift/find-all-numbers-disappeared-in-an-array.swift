class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var nums = nums

        for i in 0..<nums.count {
            if nums[abs(nums[i]) - 1] > 0 {
                nums[abs(nums[i]) - 1] *= -1
            }
        }

        var res = [Int]()

        for i in 0..<nums.count {
            if nums[i] > 0 {
                res.append(i + 1)
            } else {
                nums[i] *= -1
            }
        }

        return res
    }
}
