"""
5. Write a short Python function num_vowels(text) that counts the number of vowels in a given character string.
"""

def num_vowels(text):
    vowels = 'aeiou'
    count = 0
    for i in text:
        if i in vowels:
            count += 1
    return count