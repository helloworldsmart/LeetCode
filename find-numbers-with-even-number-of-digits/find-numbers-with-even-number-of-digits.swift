class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var total = 0
        for val in nums {
            let count = String(val).count
            if count % 2 == 0 {
                total += 1
            }
        }
        return total 
    }
}