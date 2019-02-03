class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var A = A
        var i = 0

        for j in 0..<A.count {
            if A[j] % 2 == 0 {
                let temp = A[i]
                A[i] = A[j]
                A[j] = temp
                i += 1
            }
        }

        return A
    }
}
