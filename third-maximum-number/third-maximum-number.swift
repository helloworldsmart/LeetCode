class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
      let sortedArr = nums.sorted(by: > )
      var counter = 0;
      var i = 0;

      while i + 1 < sortedArr.count {
        if sortedArr[i] != sortedArr[i+1] {
          counter += 1
        }
        if counter == 2 {
          return sortedArr[i+1]
        }
        i += 1
      }
      return sortedArr[0]
    }
}