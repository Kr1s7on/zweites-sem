"""
    1. Complete the following Python function, minmax(data)such that it takes a sequence 
    of one or more numbers, and returns the smallest and largest numbers, in the form of a 
    tuple of length two.  

    (NOTE: Do not use the built-in min or max in implementing your solution.)
"""
# Solution 1
def minmax(data):
    small = big = data[0]

    for i in data:
        if i < small:
            small = i

        elif i > big:
            big = i

    return (small, big)

#  With min max function
def minmax2(data):
    return (min(data), max(data))

# Test cases
print(minmax([1, 2, 3, 4, 5]))  # (1, 5)
print(minmax2([1, 2, 3, 4, 5]))  # (1, 5)
