class Solution {
    func maxProfit1(_ prices: [Int]) -> Int {
        guard prices.count >= 2 else {
            return 0
        }
        
        var minPrice = prices[0]
        var maxPrice = prices[0]
        var resArr = [Int]()
        
        for i in 1..<prices.count {
            if prices[i] < minPrice {
                minPrice = prices[i]
                maxPrice = prices[i]
            } else if prices[i] > maxPrice {
                maxPrice = prices[i]
                resArr.append(maxPrice - minPrice)
            }
        }
        
        return resArr.max() ?? 0
    }
    
    func maxProfit2(_ prices: [Int]) -> Int {
        guard prices.count >= 2 else {
            return 0
        }
        
        var res = 0
        var minPrice = prices[0]
        
        for price in prices {
            res = max(res, price - minPrice)
            minPrice = min(minPrice, price)
        }
        
        return res
    }
}
