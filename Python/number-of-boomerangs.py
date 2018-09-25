class Solution:
    def numberOfBoomerangs(self, points):
        """
        :type points: List[List[int]]
        :rtype: int
        """
        num = 0

        for i, pointA in enumerate(points):
            d = dict()
            for j, pointB in enumerate(points):
                if i == j:
                    continue

                distance = (pointB[0] - pointA[0]) * (pointB[0] - pointA[0]) + (pointB[1] - pointA[1]) * (pointB[1] - pointA[1])

                if distance in d:
                    d[distance] = d[distance] + 1
                else:
                    d[distance] = 1

            for key in d.keys():
                num += d[key] * (d[key] - 1)

        return num
