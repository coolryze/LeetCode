import collections
import heapq

class Solution:
    def networkDelayTime(self, times, N, K):
        """
        :type times: List[List[int]]
        :type N: int
        :type K: int
        :rtype: int
        """
        adj = [[] for _ in range(N)]
        for u, v, w in times:
            adj[u-1].append((v-1, w))

        result = 0
        lookup = set()
        best = collections.defaultdict(lambda: float("inf"))
        min_heap = [(0, K-1)]

        while min_heap and len(lookup) != N:
            result, u = heapq.heappop(min_heap)
            lookup.add(u)
            if best[u] < result:
                continue
            for v, w in adj[u]:
                if v in lookup: continue
                if result+w < best[v]:
                    best[v] = result+w
                    heapq.heappush(min_heap, (result+w, v))

        return result if len(lookup) == N else -1
