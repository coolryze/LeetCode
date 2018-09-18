class Solution {
    func addStrings1(_ num1: String, _ num2: String) -> String {
        var chars1 = Array(num1)
        var chars2 = Array(num2)

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
            var sum = num1 + num2 + carry
            carry = sum / 10
            sum = sum % 10
            resChars.insert(Character(UnicodeScalar(sum + zeroValue)!), at: 0)
        }

        if carry != 0 {
            resChars.insert(Character(UnicodeScalar(carry + zeroValue)!), at: 0)
        }

        return String(resChars)
    }

    func addStrings2(_ num1: String, _ num2: String) -> String {
        let chars1 = Array(num1.reversed())
        let chars2 = Array(num2.reversed())
        var i = 0, j = 0, sum = 0, carry = 0
        var res = ""

        while i < chars1.count || j < chars2.count || carry != 0 {
            sum = carry

            if i < chars1.count {
                sum += Int(String(chars1[i]))!
                i += 1
            }
            if j < chars2.count {
                sum += Int(String(chars2[j]))!
                j += 1
            }

            carry = sum / 10
            sum = sum % 10

            res.append(String(sum))
        }

        return String(res.reversed())
    }
}
