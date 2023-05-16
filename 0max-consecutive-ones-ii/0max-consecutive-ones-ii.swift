class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxCount = 0
        var currCount = 0
        var zeroCount = 0
        var left = 0
        
        for right in 0..<nums.count {
            if nums[right] == 0 {
                zeroCount += 1
            }
            
            while zeroCount > 1 {
                if nums[left] == 0 {
                    zeroCount -= 1
                }
                left += 1
            }
            
            currCount = right - left + 1
            maxCount = max(maxCount, currCount)
        }
        return maxCount
    }
}