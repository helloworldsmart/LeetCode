class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var hashSet = Set<Int>()
        for i in arr {
            if hashSet.contains(i * 2) || (i % 2 == 0 && hashSet.contains(i / 2)) {
                return true
            }
            hashSet.insert(i)
        }
        return false
    }
}