class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var chars1 = [Character](num1)
        var chars2 = [Character](num2)

        while chars1.count != chars2.count {
            if chars1.count > chars2.count {
                chars2.insert("0", at: 0)
            } else {
                chars1.insert("0", at: 0)
            }
        }

        let zeroValue = "0".unicodeScalars.first!.value
        var carry: UInt32 = 0
        var resChars = [Character]()

        for i in (0..<chars1.count).reversed() {
            let num1 = chars1[i].unicodeScalars.first!.value - zeroValue
            let num2 = chars2[i].unicodeScalars.first!.value - zeroValue
            var x = num1 + num2
            x += carry
            let y = x % 10
            carry = x / 10
            resChars.insert(Character(UnicodeScalar(y + zeroValue)!), at: 0)
        }

        return String(resChars)
    }
}
