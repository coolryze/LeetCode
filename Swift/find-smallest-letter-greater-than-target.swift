class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        for c in letters {
            if c > target {
                return c
            }
        }

        return letters[0]
    }
}
