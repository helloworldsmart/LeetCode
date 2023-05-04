class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var max = 0
        var current = 0
        for item in nums {
            if item == 1 {
                current += 1
                if current > max {
                    max = current
                }
            } else {
                current = 0
            }
        }
        return max
    }
}