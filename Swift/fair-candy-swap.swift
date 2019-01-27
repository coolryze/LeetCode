class Solution {
    func fairCandySwap(_ A: [Int], _ B: [Int]) -> [Int] {
        let diff = (A.reduce(0, { $0 + $1 }) - B.reduce(0, { $0 + $1 })) / 2
        let setA = Set(A)

        for b in Set(B) {
            if setA.contains(diff + b) {
                return [diff + b, b]
            }
        }

        return []
    }
}
