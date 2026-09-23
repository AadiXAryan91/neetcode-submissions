class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        return checkDuplicateFast(nums)
        //return checkDuplicateSlow(nums)
    }
}

func checkDuplicateFast(_ nums: [Int]) -> Bool {
    var set = Set<Int>()

        for i in nums {
            if set.contains(i) {
                return true
            } else {
                set.insert(i)
            }
        }

    return false
}

func checkDuplicateSlow(_ nums: [Int]) -> Bool {
    for i in 0..<nums.count {
        for x in 0..<nums.count {
            if (x != i) && (nums[x] == nums[i]) {
                return true
            }
        }
    }

    return false
}
