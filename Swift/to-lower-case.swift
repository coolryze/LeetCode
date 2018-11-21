class Solution {
    func toLowerCase(_ str: String) -> String {
        return str.utf8.map {
            $0 <= 90 && $0 >= 65 ? String(UnicodeScalar($0 + 32)): String(UnicodeScalar($0))
            }.joined()
    }
}
