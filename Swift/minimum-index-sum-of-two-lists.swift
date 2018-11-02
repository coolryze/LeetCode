class Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var lookup = [String: Int]()
        for (i, str) in list1.enumerated() {
            lookup[str] = i
        }

        var res = [String]()
        var minSum = Int.max

        for (j, str) in list2.enumerated() {
            if let i = lookup[str] {
                if i + j < minSum {
                    res = [str]
                    minSum = i + j
                } else if i + j == minSum {
                    res.append(str)
                }
            }
        }

        return res
    }
}
