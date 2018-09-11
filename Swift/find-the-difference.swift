class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        let s = Array<Character>(s)
        var t = Array<Character>(t)

        for char in s {
            if let index = t.index(of: char) {
                t.remove(at: index)
            }
        }

        return t[0]
    }
}
