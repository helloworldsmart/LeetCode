class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var array: [String] = []
        for val in 1 ... n {
            if val % 3 == 0 && val % 5 == 0 {
                array.append("FizzBuzz")
            } else if val % 3 == 0 {
                array.append("Fizz")
            } else if val % 5 == 0 {
                array.append("Buzz")
            } else {
                array.append(String(val))
            }
        }
        return array
    }
}