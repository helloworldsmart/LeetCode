class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var max = 0
        for item in accounts {
            var total = 0
            for val in item {
                total += val
            }
            if total > max {
                max = total
            }
        }
        return max
    }
}