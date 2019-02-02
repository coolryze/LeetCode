class Solution {
    func isMonotonic(_ A: [Int]) -> Bool {
        var inc = false
        var dec = false

        for i in 0..<A.count - 1 {
            if A[i] < A[i + 1] {
                inc = true
            } else if A[i] > A[i + 1] {
                dec = true
            }
        }

        return !inc || !dec
    }
}
