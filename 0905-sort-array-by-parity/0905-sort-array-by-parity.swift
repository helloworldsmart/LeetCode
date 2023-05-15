class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var odd = [Int]()
        var even = [Int]()
        for num in nums {
            if num % 2 == 0 {
                even.append(num)
            } else {
                odd.append(num)
            }
        }
        return even + odd
    }
}