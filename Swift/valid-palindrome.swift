class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
        let characters = [Character](s.lowercased())
        let cleaned = characters.filter { character in
            return character.description.rangeOfCharacter(from: CharacterSet.alphanumerics) != nil
        }
        let total = cleaned.count
        
        for i in 0 ..< total/2 {
            if cleaned[i] != cleaned[total - 1 - i] {
                return false
            }
        }
        
        return true
    }
}
