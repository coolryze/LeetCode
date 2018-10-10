class Solution {
    func constructRectangle(_ area: Int) -> [Int] {
        var w = Int(sqrt(Double(area)))
        while area % w != 0 {
            w -= 1
        }
        return [area / w, w]
    }
}
