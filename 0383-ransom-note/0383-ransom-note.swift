class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var freq = [Character: Int]()
        for char in magazine {
            freq[char, default: 0] += 1
        }
        
        for char in ransomNote {
            if let count = freq[char], count > 0 {
                freq[char] = count - 1
            } else {
                return false
            }
        }
        return true
    }
}