def binarySearchFO(theValues, target):
    low = 0
    high = len(theValues) - 1 # The last index
    result = -1  # Store the position of the first occurrence

    while low <= high:
        # Find middle point
        mid = (low + high) // 2
        
        if theValues[mid] == target:
            result = mid
            # Continue search in the left subarray
            high = mid - 1
        elif target < theValues[mid]:
            high = mid - 1
        # Continue search in the right subarray
        else:
            low = mid + 1

    return result

# Test the function
theValues = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
target = 5
print(binarySearchFO(theValues, target))  # Output: 4