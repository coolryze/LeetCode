class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var res = [Int]()
        var dict = [Int: Int]()
        
        for i in 0..<nums.count {
            if let index = dict[target - nums[i]] {
                res.append(index)
                res.append(i)
                break
            }
            dict[nums[i]] = i
        }
        
        return res
    }
}
