class Solution:
    def largestTriangleArea(self, points):
        """
        :type points: List[List[int]]
        :rtype: float
        """
        pointsLen = len(points)
        result = 0
        for i in range(pointsLen-2):
            for j in range(i+1, pointsLen-1):
                for k in range(j+1, pointsLen):
                    result = max(result,
                                 0.5 * abs(points[i][0] * points[j][1] +
                                           points[j][0] * points[k][1] +
                                           points[k][0] * points[i][1] -
                                           points[j][0] * points[i][1] -
                                           points[k][0] * points[j][1] -
                                           points[i][0] * points[k][1]))
        return result
