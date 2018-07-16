class Solution {
    func isValid(_ s: String) -> Bool {
        var list = [Character]()
        
        for char in s {
            if char == "(" || char == "[" || char == "{" {
                list.append(char)
            } else if char == ")" {
                guard list.count != 0 && list.removeLast() == "(" else {
                    return false
                }
            } else if char == "]" {
                guard list.count != 0 && list.removeLast() == "[" else {
                    return false
                }
            } else if char == "}" {
                guard list.count != 0 && list.removeLast() == "{" else {
                    return false
                }
            }
        }
        
        return list.isEmpty
    }
}
