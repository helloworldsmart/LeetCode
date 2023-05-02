class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var val = num
        var step = 0
        while (val != 0) {
            if val % 2 == 0 {
                val = val / 2
                step += 1
            } else {
                val -= 1
                step += 1
            }
        }
        return step
    }
}