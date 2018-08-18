class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict = [Int: Int]()

        for (index, value) in nums.enumerated() {
            if let idx = dict[value], index - idx <= k {
                return true
            }
            dict[value] = index
        }

        return false
    }
}
