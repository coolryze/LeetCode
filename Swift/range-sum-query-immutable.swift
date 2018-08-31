class NumArray {
    private var accu: [Int]

    init(_ nums: [Int]) {
        accu = [0]
        for num in nums {
            accu.append(accu.last! + num)
        }
    }

    func sumRange(_ i: Int, _ j: Int) -> Int {
        return accu[j + 1] - accu[i]
    }
}
