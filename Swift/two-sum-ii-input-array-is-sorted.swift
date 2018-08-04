class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (i, num) in numbers.enumerated() {
            guard let index = dict[target - num] else {
                dict[num] = i + 1
                continue
            }
            return [index, i + 1]
        }

        fatalError("no valid outputs")
    }
}
