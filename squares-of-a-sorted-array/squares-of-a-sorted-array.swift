class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var array = [Int]()
        for num in nums {
            array.append(num * num)
        }
        array.sort(by: <)
        return array
    }
}