class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowerbed = flowerbed
        var n = n

        for i in 0..<flowerbed.count {
            if flowerbed[i] == 0 && (i == 0 || flowerbed[i-1] == 0) && (i == flowerbed.count - 1 || flowerbed[i+1] == 0) {
                flowerbed[i] = 1
                n -= 1
            }
            if n <= 0 {
                return true
            }
        }

        return false
    }
}
