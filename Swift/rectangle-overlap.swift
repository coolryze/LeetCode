class Solution {
    func isRectangleOverlap(_ rec1: [Int], _ rec2: [Int]) -> Bool {
        return intersect(rec1[0], rec1[2], rec2[0], rec2[2]) && intersect(rec1[1], rec1[3], rec2[1], rec2[3])
    }

    private func intersect(_ pLeft: Int, _ pRight: Int, _ qLeft: Int, _ qRight: Int) -> Bool {
        return max(pLeft, qLeft) < min(pRight, qRight)
    }
}
