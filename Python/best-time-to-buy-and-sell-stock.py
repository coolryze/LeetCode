class Solution:
    def maxProfit1(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        if len(prices) < 2:
            return 0

        minPrice = prices[0]
        maxPrice = prices[0]
        resArr = list()

        for i in range(1, len(prices)):
            if prices[i] < minPrice:
                minPrice = prices[i]
                maxPrice = prices[i]
            elif prices[i] > maxPrice:
                maxPrice = prices[i]
                resArr.append(maxPrice - minPrice)
        
        return max(resArr) if len(resArr) > 0 else 0

    def maxProfit2(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        if len(prices) < 2:
            return 0
        
        res = 0
        minPrice = prices[0]
        
        for price in prices:
            res = max(res, price - minPrice)
            minPrice = min(minPrice, price)

        return res
