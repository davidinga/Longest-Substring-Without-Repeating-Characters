func lengthOfLongestSubstring(_ s: String) -> Int {
    let s = s.map(Character.init)
    var maxChars = 0
    var chars: [Character: Int] = [:]
    var l = 0, r = 0
    while r < s.count {
        if let i = chars[s[r]] {
            repeat {
                chars[s[l]] = nil
                l += 1
            } while l <= i
        }
        maxChars = max(chars.count + 1, maxChars)
        chars[s[r]] = r
        r += 1
    }
    return maxChars
}