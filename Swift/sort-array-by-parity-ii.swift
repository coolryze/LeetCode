class Solution {
    func sortArrayByParityII(_ A: [Int]) -> [Int] {
        var A = A
        var j = 1

        for i in stride(from: 0, to: A.count, by: 2) {
            if A[i] % 2 != 0 {
                while A[j] % 2 != 0 {
                    j += 2
                }
                let temp = A[i]
                A[i] = A[j]
                A[j] = temp
            }
        }

        return A
    }
}
