/*
Given a string s, find the length of the longest substring without repeating characters.

Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.

Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.

Example 3:

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

Constraints:

0 <= s.length <= 5 * 10^4
s consists of English letters, digits, symbols and spaces.
*/

func lengthOfLongestSubstring(_ s: String) -> Int {
    var maxLength = 0
    let s = s.map(Character.init)
    var chars: Set<Character> = []
    var leftIdx = 0
    for rightIdx in s.indices {
        while chars.contains(s[rightIdx]) {
            chars.remove(s[leftIdx])
            leftIdx += 1
        }
        chars.insert(s[rightIdx])
        maxLength = max(maxLength, rightIdx - leftIdx + 1)
    }
    return maxLength
}