# Search Algorithms Basics

## What is Searching?
- Process of finding an item in a sequence using a search key
- Used to locate specific items in a list/array

## Types of Search
1. Sequential (Linear) Search 
2. Binary Search

# Sequential Search

## Key Points
- Simplest search method
- Checks each item one by one
- Works with both sorted and unsorted lists

## How it Works
1. Start from first item
2. Compare with target value
3. If match found → return position
4. If no match → move to next item
5. Repeat until found or list ends

## Time Complexity
- Best case: O(1) - found at first position
- Worst case: O(n) - check all n items
- Average case: O(n)

# Binary Search

## Key Points
- More efficient than sequential search
- Only works with sorted lists
- Uses divide and conquer strategy

## How it Works
1. Find middle item
2. Compare with target value
3. If match → return position
4. If target is smaller → search left half
5. If target is larger → search right half
6. Repeat until found or not found

## Time Complexity
- Best case: O(1) - found at middle
- Worst case: O(log₂ n) 
- Average case: O(log₂ n)

## When Search Stops
- Success: Item found → return position
- Failure: When high < low → return -1

# Comparison
1. Sequential Search:
   - Simpler to implement
   - Works with unsorted lists
   - Less efficient for large lists

2. Binary Search:
   - More complex to implement
   - Requires sorted list
   - Much more efficient for large lists
   - Better for frequently searched data