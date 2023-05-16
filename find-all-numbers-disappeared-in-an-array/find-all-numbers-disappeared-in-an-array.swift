class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var nums = nums
        
        for num in nums {
            let index = abs(num) - 1
            if nums[index] > 0 {
                nums[index] *= -1
            }
        }
        
        for i in 0..<nums.count {
            if nums[i] > 0 {
                result.append(i + 1)
            }
        }
        
        return result
    }
}