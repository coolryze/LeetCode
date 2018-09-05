class Solution {
    func intersect1(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dict = [Int: Int]()

        for num in nums1 {
            if let count = dict[num] {
                dict[num] = count + 1
            } else {
                dict[num] = 1
            }
        }

        var resDict = [Int: Int]()

        for num in nums2 {
            if let count = dict[num] {
                if let resCount = resDict[num] {
                    resDict[num] = resCount + 1
                } else {
                    resDict[num] = 1
                }

                if count <= 1 {
                    dict.removeValue(forKey: num)
                } else {
                    dict[num] = count - 1
                }
            }
        }

        var resArray = [Int]()
        for (num, count) in resDict {
            resArray.append(contentsOf: Array(repeating: num, count: count))
        }

        return resArray
    }

    func intersect2(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let nums1 = nums1.sorted(by: <)
        let nums2 = nums2.sorted(by: <)
        var i = 0
        var j = 0
        var res = [Int]()

        while i < nums1.count && j < nums2.count {
            if nums1[i] < nums2[j] {
                i += 1
            } else if nums1[i] > nums2[j] {
                j += 1
            } else {
                res.append(nums1[i])
                i += 1
                j += 1
            }
        }

        return res
    }
}
