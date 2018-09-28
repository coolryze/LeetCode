class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        let ss = s + s
        let str = ss[ss.index(after: ss.startIndex)..<ss.index(before: ss.endIndex)]
        return str.contains(s)
    }
}
