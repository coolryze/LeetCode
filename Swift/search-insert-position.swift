class Solution {
    func searchInsert1(_ nums: [Int], _ target: Int) -> Int {
        for (index, value) in nums.enumerated() {
            if target <= value {
                return index
            }
        }
        
        return nums.count
    }
    
    func searchInsert2(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = 0
        
        while left <= right {
            mid = left + (right - left) / 2
            if nums[mid] >= target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        
        return left
    }
}
