class Solution {
    func findRelativeRanks(_ nums: [Int]) -> [String] {
        let sortedNums = nums.sorted().reversed()
        var ranks = ["Gold Medal", "Silver Medal", "Bronze Medal"]
        ranks = nums.count > 3 ? ranks + (4..<nums.count+1).map{ return String($0) } : ranks
        let dict = Dictionary(uniqueKeysWithValues: zip(sortedNums, ranks))
        return nums.map{ return dict[$0]! }
    }
}
