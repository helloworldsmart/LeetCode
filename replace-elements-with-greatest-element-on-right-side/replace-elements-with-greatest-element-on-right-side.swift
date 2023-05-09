class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var max = -1
        var res = [Int](repeating: 0, count: arr.count)
        for i in stride(from: arr.count - 1, through: 0, by: -1) {
            res[i] = max
            max = Swift.max(max, arr[i])
        }
        return res
    }
}
