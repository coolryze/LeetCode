class Solution {
    func reverseOnlyLetters(_ S: String) -> String {
        var resChars = Array<Character>()
        var letterGenerator = LetterGenerator(str: S)

        for char in S {
            if CharacterSet.letters.contains(char.unicodeScalars.first!), let letter = letterGenerator.next() {
                resChars.append(letter)
            } else {
                resChars.append(char)
            }
        }

        return String(resChars)
    }

    private struct LetterGenerator: IteratorProtocol {
        typealias Element = Character
        private var letters: [Character]

        init(str: String) {
            self.letters = Array(str).filter { CharacterSet.letters.contains($0.unicodeScalars.first!) }
        }

        mutating func next() -> Character? {
            return letters.popLast()
        }
    }
}
