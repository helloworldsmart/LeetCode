func twoSum(nums []int, target int) []int {
    for i, s := range nums {
        for j, x := range nums {
            if i != j && target == s+x {
                return []int{i, j}
            }
        } 
    }
    return nil
}