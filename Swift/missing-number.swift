class Solution {
    func missingNumber1(_ nums: [Int]) -> Int {
        var set = Set<Int>()

        for num in nums {
            set.insert(num)
        }

        for i in 0...nums.count {
            if !set.contains(i) {
                return i
            }
        }

        fatalError("no valid outputs")
    }

    func missingNumber2(_ nums: [Int]) -> Int {
        return (0...nums.count).reduce(0, { return $0 + $1 }) - nums.reduce(0, { return $0 + $1 })
    }
}
