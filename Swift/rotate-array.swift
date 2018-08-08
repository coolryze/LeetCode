class Solution {
    func rotate1(_ nums: inout [Int], _ k: Int) {
        guard nums.count > 1 else {
            return
        }

        var k = k % nums.count

        while k > 0 {
            nums.insert(nums.popLast()!, at: 0)
            k -= 1
        }
    }

    func rotate2(_ nums: inout [Int], _ k: Int) {
        let k = k % nums.count

        reverse(&nums, 0, nums.count - 1)
        reverse(&nums, 0, k - 1)
        reverse(&nums, k, nums.count - 1)
    }

    private func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
        if start < 0 || end > nums.count || start >= end {
            return
        }

        var start = start
        var end = end

        while start < end {
            nums.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
}
