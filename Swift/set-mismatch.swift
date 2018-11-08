class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var sum = Array(1...nums.count).reduce(0, { $0 + $1 })
        var set = Set<Int>()
        var res = [Int]()

        for num in nums {
            if set.contains(num) {
                res.append(num)
            } else {
                set.insert(num)
                sum -= num
            }
        }
        res.append(sum)

        return res
    }
}
