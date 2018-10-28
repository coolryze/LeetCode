class Solution {
    func distributeCandies(_ candies: [Int]) -> Int {
        let lookup = Set(candies)
        return min(lookup.count, candies.count / 2)
    }
}
