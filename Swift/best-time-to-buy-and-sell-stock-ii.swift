class Solution {
  func maxProfit(_ prices: [Int]) -> Int {
    guard prices.count >= 2 else {
      return 0
    }
    
    var res = 0
    
    for i in 1..<prices.count where prices[i] > prices[i - 1] {
      res += prices[i] - prices[i - 1]
    }
    
    return res
  }
}
