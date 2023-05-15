class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        for num in nums {
            if num % 2 == 0 {
                result.insert(num, at: 0)
            } else {
                result.append(num)
            }
        }
        return result
    }
}