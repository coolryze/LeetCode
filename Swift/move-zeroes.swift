class Solution {
    func moveZeroes1(_ nums: inout [Int]) {
        var indexArray = [Int]()

        for (index, num) in nums.enumerated() {
            if num == 0 {
                indexArray.append(index)
            }
        }

        let zeroCount = indexArray.count
        guard zeroCount > 0 else { return }

        for _ in 1...zeroCount {
            let index = indexArray.popLast()!
            nums.remove(at: index)
            nums.append(0)
        }
    }

    func moveZeroes2(_ nums: inout [Int]) {
        var index = 0

        for num in nums {
            if num != 0 {
                nums[index] = num
                index += 1
            }
        }

        while index < nums.count {
            nums[index] = 0
            index += 1
        }
    }
}
