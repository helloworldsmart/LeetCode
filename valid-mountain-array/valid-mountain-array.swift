class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        if arr.count < 3 {
            return false
        }
        
        var i = 0
        while i < arr.count - 1 && arr[i] < arr[i+1] {
            i += 1
        }
        if i == 0 || i == arr.count - 1 {
            return false
        }
        while i < arr.count - 1 && arr[i] > arr[i+1] {
            i += 1
        }
        return i == arr.count - 1
    }
}