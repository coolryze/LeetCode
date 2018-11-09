class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var dict = [Character: Int]()

        for move in moves {
            dict[move] = (dict[move] ?? 0) + 1
        }

        return dict["U"] == dict["D"] && dict["L"] == dict["R"]
    }
}
