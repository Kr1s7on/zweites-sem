# Week 4 Sort

## Sorting Algorithms in Python

Sorting is a way of arranging elements in a specific order, like smallest to largest or vice versa. Sorting is useful for organizing data to make searching, displaying, and understanding easier.

### 1. **Bubble Sort**
Bubble Sort repeatedly steps through the list, compares each pair of adjacent elements, and swaps them if they're in the wrong order. Each pass "bubbles" the largest unsorted element to its correct position.

#### How It Works:
1. Compare the first two items. If the first is larger, swap them.
2. Move to the next pair and repeat until the end of the list.
3. The largest item reaches the last position after each full pass.
4. Repeat for all items, reducing the list length each time.

#### Code Example:
```python
def bubble_sort(the_seq):
    n = len(the_seq)
    for i in range(n - 1):           # We do n-1 passes
        for j in range(n - 1 - i):    # Each pass compares fewer elements
            if the_seq[j] > the_seq[j + 1]:  # Swap if out of order
                the_seq[j], the_seq[j + 1] = the_seq[j + 1], the_seq[j]

# Test
numbers = [10, 51, 2, 18, 4, 31, 13, 5, 23, 64, 29]
bubble_sort(numbers)
print(numbers)
```

### 2. **Selection Sort**
Selection Sort works by repeatedly finding the smallest element from the unsorted portion and moving it to the sorted portion.

#### How It Works:
1. Start with the first element and assume it's the smallest.
2. Look through the rest to find the actual smallest.
3. Swap it with the first position if it's not already there.
4. Repeat this process, moving one position over each time.

#### Code Example:
```python
def selection_sort(the_seq):
    n = len(the_seq)
    for i in range(n - 1):
        min_index = i                 # Assume the ith element is the smallest
        for j in range(i + 1, n):
            if the_seq[j] < the_seq[min_index]:
                min_index = j          # Update min_index if a smaller element is found
        if min_index != i:             # Swap if needed
            the_seq[i], the_seq[min_index] = the_seq[min_index], the_seq[i]

# Test
numbers = [38, 99, 21, 87, 68, 6, 52, 17, 74, 28]
selection_sort(numbers)
print(numbers)
```

### 3. **Insertion Sort**
Insertion Sort builds the sorted list one item at a time, placing each new item in its correct position.

#### How It Works:
1. Start with the first item, assuming it's already sorted.
2. Pick the next item and move it left until it's in the correct spot in the sorted portion.
3. Repeat until all items are in order.

#### Code Example:
```python
def insertion_sort(the_seq):
    n = len(the_seq)
    for i in range(1, n):
        value = the_seq[i]         # Current element to be positioned
        pos = i                    # Start from its current position
        while pos > 0 and value < the_seq[pos - 1]:  # Move larger elements one position right
            the_seq[pos] = the_seq[pos - 1]
            pos -= 1
        the_seq[pos] = value       # Place the element in the correct spot

# Test
numbers = [38, 99, 21, 87, 68, 6, 52, 17, 74, 28]
insertion_sort(numbers)
print(numbers)
```

---

### Built-in Sorting in Python

Python provides easy-to-use built-in sorting methods:

- **`list.sort()`**: Sorts the list in place (changes the original list).
- **`sorted()`**: Returns a new list with the sorted elements, leaving the original list unchanged.

#### Examples:
```python
numbers = [5, 2, 3, 1, 4]

# Using sorted() - creates a new sorted list
sorted_numbers = sorted(numbers)
print(sorted_numbers)  # [1, 2, 3, 4, 5]

# Using list.sort() - sorts the list in place
numbers.sort()
print(numbers)          # [1, 2, 3, 4, 5]
```

Both methods support the `key` parameter to specify custom sorting. For example, to sort strings by length:
```python
strs = ['ccc', 'aaaa', 'd', 'bb']
sorted_by_length = sorted(strs, key=len)
print(sorted_by_length)  # ['d', 'bb', 'ccc', 'aaaa']
```

These are some of the simplest sorting algorithms in Python. Each has its advantages depending on the scenario and the data's characteristics. For most tasks, Python's built-in methods like `sort()` or `sorted()` are highly efficient and preferable.