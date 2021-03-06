import collections

class Solution:
    def shortestCompletingWord(self, licensePlate, words):
        """
        :type licensePlate: str
        :type words: List[str]
        :rtype: str
        """
        result = None
        counter = collections.Counter(c.lower() for c in licensePlate if c.isalpha())

        for word in words:
            if (result is None or (len(word) < len(result))) and self.contains(counter, word):
                result = word

        return result

    def contains(self, counter1, w2):
        c2 = collections.Counter(w2.lower())
        c2.subtract(counter1)
        return all(map(lambda x: x >= 0, c2.values()))
