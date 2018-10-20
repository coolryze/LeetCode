class Solution {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        guard k >= 0 else {
            return 0
        }

        var result = Set<Int>()
        var lookup = Set<Int>()

        for num in nums {
            if lookup.contains(num - k) {
                result.insert(num - k)
            }
            if lookup.contains(num + k) {
                result.insert(num)
            }
            lookup.insert(num)
        }

        return result.count
    }
}
