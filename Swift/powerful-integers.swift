class Solution {
    func powerfulIntegers(_ x: Int, _ y: Int, _ bound: Int) -> [Int] {
        var res = Set<Int>()
        let logX = x != 1 ? Int((log(Double(bound)) / log(Double(x)))) + 1 : 1
        let logY = y != 1 ? Int((log(Double(bound)) / log(Double(y)))) + 1 : 1
        var powX = 1

        for _ in 0..<logX {
            var powY = 1
            for _ in 0..<logY {
                let val = powX + powY
                if val <= bound {
                    res.insert(val)
                }
                powY *= y
            }
            powX *= x
        }

        return Array(res)
    }
}
