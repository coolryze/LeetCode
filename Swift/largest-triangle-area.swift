class Solution {
    func largestTriangleArea(_ points: [[Int]]) -> Double {
        let pointsCount = points.count
        var res: Double = 0

        for i in 0..<pointsCount-2 {
            for j in 0..<pointsCount-1 {
                for k in 0..<pointsCount {
                    let area = 0.5 * Double(abs(points[i][0] * points[j][1] +
                                                points[j][0] * points[k][1] +
                                                points[k][0] * points[i][1] -
                                                points[j][0] * points[i][1] -
                                                points[k][0] * points[j][1] -
                                                points[i][0] * points[k][1]))
                    res = max(res, area)

                }
            }
        }

        return res
    }
}
