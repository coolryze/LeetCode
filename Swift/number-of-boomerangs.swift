class Solution {
    func numberOfBoomerangs(_ points: [[Int]]) -> Int {
        var num = 0

        for (i, pointA) in points.enumerated() {
            var dict = [Int: Int]()
            for (j, pointB) in points.enumerated() {
                if i == j {
                    continue
                }

                let distance = (pointB[0] - pointA[0]) * (pointB[0] - pointA[0])  + (pointB[1] - pointA[1]) * (pointB[1] - pointA[1])

                if let count = dict[distance] {
                    dict[distance] = count + 1
                } else {
                    dict[distance] = 1
                }
            }

            for key in dict.keys {
                num += dict[key]! * (dict[key]! - 1)
            }
        }

        return num
    }
}
