class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        return getConcat1Pass(nums)
        // return getConcat2Pass(nums, 2)
    }
}

func getConcat2Pass(_ nums: [Int], _ range: Int) -> [Int] {
    var ans = [Int]()

    for i in 0..<range {
        for i in 0..<nums.count {
            ans.append(nums[i])
        }
    }

    return ans
}

func getConcat1Pass(_ nums: [Int]) -> [Int] {
    var ans = Array(repeating: 0, count: 2 * nums.count)

    for i in 0..<nums.count {
        ans[i] = nums[i]
        ans[i + nums.count] = nums[i]
    }

    return ans
}
