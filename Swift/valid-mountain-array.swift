class Solution {
    func validMountainArray(_ A: [Int]) -> Bool {
        guard A.count >= 3 else {
            return false
        }

        var i = 0
        while i + 1 < A.count && A[i] < A[i + 1] {
            i += 1
        }

        var j = A.count - 1
        while j - 1 >= 0 && A[j - 1] > A[j] {
            j -= 1
        }

        return i == j && 0 < i && j < A.count - 1
    }
}
