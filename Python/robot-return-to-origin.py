class Solution:
    def judgeCircle(self, moves):
        """
        :type moves: str
        :rtype: bool
        """
        d = dict({'U': 0, 'D': 0, 'L': 0, 'R': 0})

        for move in moves:
            d[move] = d[move] + 1

        return d['U'] == d['D'] and d['L'] == d['R']
