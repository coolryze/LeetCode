class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var majority = nums[0]
        var count = 0
        
        for num in nums {
            if num == majority {
                count += 1
            } else {
                count -= 1
            }
            
            if count == 0 {
                majority = num
                count = 1
            }
        }
        
        return majority
    }
}
