class Solution {
    func merge1(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard m > 0 else {
            nums1 = nums2
            return
        }
        
        var m = m
        var current = 0
        
        for i in 0..<n {
            for j in current..<m {
                if nums2[i] >= nums1[m - 1] {
                    nums1[m] = nums2[i]
                    m += 1
                    break
                }
                if nums2[i] <= nums1[j] {
                    nums1.insert(nums2[i], at: j)
                    current = j + 1
                    m += 1
                    break
                }
            }
        }
        
        nums1 = Array(nums1[..<m])
    }
    
    func merge2(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        
        while i >= 0 || j >= 0 {
            if j < 0 || (i >= 0 && nums1[i] > nums2[j]) {
                nums1[i + j + 1] = nums1[i]
                i -= 1
            } else {
                nums1[i + j + 1] = nums2[j]
                j -= 1
            }
        }
    }
}
