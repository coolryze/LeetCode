class Solution {
    func containsDuplicate1(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()

        for (index, value) in nums.enumerated() {
            if let _ = dict[value] {
                return true
            }
            dict[value] = index
        }

        return false
    }

    func containsDuplicate2(_ nums: [Int]) -> Bool {
        return nums.count > Set(nums).count
    }
}
