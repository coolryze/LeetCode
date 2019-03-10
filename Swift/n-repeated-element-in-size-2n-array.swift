class Solution {
    func repeatedNTimes(_ A: [Int]) -> Int {
        for i in 2..<A.count {
            if A[i - 1] == A[i] || A[i - 2] == A[i] {
                return A[i]
            }
        }

        return A[0]
    }
}
