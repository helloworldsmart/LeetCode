class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var newArr = [Int]()
        for index in 0...arr.count - 1  {
            if arr[index] == 0 {
                newArr.append(0)
                newArr.append(0)
            } else {
                newArr.append(arr[index])
            }
        }
        arr = Array(newArr.prefix(arr.count))
    }
}