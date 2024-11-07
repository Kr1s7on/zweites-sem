# Tutorial 4 && 5

## 1. Sorting Overview
Sorting is arranging a collection of items (like numbers or words) in a certain order, commonly from smallest to largest (ascending) or largest to smallest (descending).

---

## 2. Bubble Sort

**Bubble Sort** repeatedly steps through the list, compares adjacent elements, and swaps them if they're in the wrong order. This moves the largest unsorted element to its correct position with each pass, like a "bubble" rising to the top.

### Bubble Sort Code:
```python
def bubble_sort(the_seq):
    n = len(the_seq)
    for i in range(n - 1):
        for j in range(n - 1 - i):
            if the_seq[j] > the_seq[j + 1]:
                # Swap if elements are in the wrong order
                the_seq[j], the_seq[j + 1] = the_seq[j + 1], the_seq[j]
```

### Task 1: Optimized Bubble Sort

To improve efficiency, we can add a check to stop if no swaps occurred in a pass (meaning the list is already sorted).

### Optimized Bubble Sort Code:
```python
def bubble_sort_optimized(the_seq):
    n = len(the_seq)
    for i in range(n - 1):
        swapped = False
        for j in range(n - 1 - i):
            if the_seq[j] > the_seq[j + 1]:
                # Swap elements
                the_seq[j], the_seq[j + 1] = the_seq[j + 1], the_seq[j]
                swapped = True
        # If no swaps, list is sorted
        if not swapped:
            break
```

### Example Exercise:
**How many passes are needed to sort `[1, 2, 3, 5, 4]` using standard and optimized Bubble Sort?**

- **Standard Bubble Sort** will go through all passes even if sorted midway.
- **Optimized Bubble Sort** will stop early if no swaps are needed.

**Solution:** Only 1 pass is needed with optimized Bubble Sort, as it detects that the list is sorted early.

---

## 3. Selection Sort

**Selection Sort** works by finding the smallest element in the unsorted portion and moving it to the beginning, effectively building the sorted list one element at a time.

### Selection Sort Code:
```python
def selection_sort(the_seq):
    n = len(the_seq)
    for i in range(n - 1):
        min_index = i
        for j in range(i + 1, n):
            if the_seq[j] < the_seq[min_index]:
                min_index = j
        # Swap the minimum element with the first unsorted position
        the_seq[i], the_seq[min_index] = the_seq[min_index], the_seq[i]
```

### Task 2: Sort in Descending Order

Given the list `[12, 7, 9, 24, 7, 29, 5, 3, 11, 7]`, trace each pass of Selection Sort in descending order.

### Solution:
To sort in descending order, adjust the comparison:
```python
def selection_sort_desc(the_seq):
    n = len(the_seq)
    for i in range(n - 1):
        max_index = i
        for j in range(i + 1, n):
            if the_seq[j] > the_seq[max_index]:  # Change to '>' for descending
                max_index = j
        # Swap the maximum element with the first unsorted position
        the_seq[i], the_seq[max_index] = the_seq[max_index], the_seq[i]
```

| Pass | List after each pass        |
|------|------------------------------|
| 1    | [29, 7, 9, 24, 7, 12, 5, 3, 11, 7] |
| 2    | [29, 24, 9, 7, 7, 12, 5, 3, 11, 7] |
| 3    | [29, 24, 12, 7, 7, 9, 5, 3, 11, 7] |
| 4    | [29, 24, 12, 11, 7, 9, 5, 3, 7, 7] |
| 5    | [29, 24, 12, 11, 9, 7, 5, 3, 7, 7] |

Continue until the entire list is sorted.

---

## 4. Insertion Sort

**Insertion Sort** builds the sorted list one item at a time, placing each new item in its correct spot within the sorted portion of the list.

### Insertion Sort Code:
```python
def insertion_sort(the_seq):
    n = len(the_seq)
    for i in range(1, n):
        value = the_seq[i]
        pos = i
        while pos > 0 and the_seq[pos - 1] > value:
            the_seq[pos] = the_seq[pos - 1]
            pos -= 1
        the_seq[pos] = value
```

### Task 3: Sort in Ascending Order

Use Insertion Sort to sort `[12, 7, 9, 24, 7, 29, 5, 3, 11, 7]` in ascending order.

| Pass | List after each pass                |
|------|-------------------------------------|
| 1    | [7, 12, 9, 24, 7, 29, 5, 3, 11, 7]  |
| 2    | [7, 9, 12, 24, 7, 29, 5, 3, 11, 7]  |
| 3    | [7, 9, 12, 24, 7, 29, 5, 3, 11, 7]  |
| 4    | [7, 7, 9, 12, 24, 29, 5, 3, 11, 7]  |
| ...  | Continue until sorted.              |

---

## 5. True/False Questions on Sorting

**Question a**: Using Selection Sort, after \(N\) passes, the first \(N\) elements are in sorted order.
- **Answer**: True, because Selection Sort progressively builds the sorted section from left to right.

**Question b**: Using Selection Sort in ascending order, after \(N\) passes, the first \(N\) elements are the \(N\) smallest elements in the list.
- **Answer**: True, each pass finds the smallest remaining item.

**Question c**: Using Insertion Sort, after \(N\) passes, the first \(N\) elements are in sorted order.
- **Answer**: True, Insertion Sort places each item in the correct position within the sorted portion.

**Question d**: Using Insertion Sort in ascending order, after \(N\) passes, the first \(N\) elements are the \(N\) smallest elements in the list.
- **Answer**: True, each pass inserts the next smallest item into the sorted portion.
