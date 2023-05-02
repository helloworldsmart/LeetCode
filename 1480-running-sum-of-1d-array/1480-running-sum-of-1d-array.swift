class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var listData = nums
        for i in 0 ..< listData.count - 1 {
            listData[i + 1] = listData[i] + nums[i + 1]
        }
        return listData
    }
}