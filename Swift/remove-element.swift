class Solution {
    func removeElement1(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        var last = nums.count - 1
        
        while i <= last {
            if nums[i] == val {
                nums[i] = nums[i] ^ nums[last]
                nums[last] = nums[i] ^ nums[last]
                nums[i] = nums[i] ^ nums[last]
                last -= 1
            } else {
                i += 1
            }
        }
        
        return i
    }
    
    func removeElement2(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { $0 != val }
        return nums.count
    }
}
