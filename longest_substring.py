class Solution:
    
    def lengthOfLongestSubstring(self, s: str) -> int:
        
        # If there are no repeating characters in the entire string
        if len(s) == len(set(s)):
            return len(s)
        
        # Substring variable
        sub_str:str = ''
            
        # Max length of substring
        max_len:int = 1
        
        # For each character in the string
        for c in s:
            
            # Add to the substring if the current character isn't in the substring
            if c not in sub_str:
            
                sub_str += c
                max_len = max(max_len, len(sub_str))
            # If the character is already in the substring
            else:
                
                # Start a new substring that drops off all characters up to the point where
                # there was a repeat
                sub_str = sub_str.split(c)[1] + c
                
        return max_len
        
