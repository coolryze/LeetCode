class Solution:
    def findRestaurant(self, list1, list2):
        """
        :type list1: List[str]
        :type list2: List[str]
        :rtype: List[str]
        """
        lookup = {}
        for i, s in enumerate(list1):
            lookup[s] = i

        res = []
        minSum = float("inf")

        for j, s in enumerate(list2):
            if s in lookup:
                if j + lookup[s] < minSum:
                    res = [s]
                    minSum = j + lookup[s]
                elif j + lookup[s] == minSum:
                    res.append(s)

        return res
