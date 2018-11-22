class Solution {
    func isOneBitCharacter(_ bits: [Int]) -> Bool {
        var parity = 0

        for i in (0..<bits.count-1).reversed() {
            if bits[i] == 0 {
                break
            }
            parity ^= bits[i]
        }

        return parity == 0
    }
}
