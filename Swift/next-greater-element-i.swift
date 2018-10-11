class Solution {
    func nextGreaterElement(_ findNums: [Int], _ nums: [Int]) -> [Int] {
        var res = [Int]()

        for num in findNums {
            if let index = nums.index(of: num), index < nums.count {
                var value = -1
                for i in index + 1..<nums.count where num < nums[i] {
                    value = nums[i]
                    break
                }
                res.append(value)
            } else {
                res.append(-1)
            }
        }

        return res
    }
}
