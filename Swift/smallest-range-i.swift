class Solution {
    func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
        return max(0, arrayMax(A) - arrayMin(A) - 2*K)
    }

    private func arrayMax(_ list: [Int]) -> Int {
        var maxNum = Int.min

        for num in list {
            maxNum = max(maxNum, num)
        }

        return maxNum
    }

    private func arrayMin(_ list: [Int]) -> Int {
        var minNum = Int.max

        for num in list {
            minNum = min(minNum, num)
        }

        return minNum
    }
}
