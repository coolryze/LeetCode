class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        return [Int](Set<Int>(nums1).intersection(nums2))
    }
}
