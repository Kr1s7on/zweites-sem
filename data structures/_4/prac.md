# Practical 04 & 05: Sorting in Python

## 1. Selection Sort with Custom Order

The goal is to modify the `selectionSort` function to sort in either ascending or descending order based on a parameter.

### Original Code
```python
def selectionSort(theSeq):
    n = len(theSeq)
    for i in range(n - 1):
        smallNdx = i
        for j in range(i + 1, n):
            if theSeq[j] < theSeq[smallNdx]:
                smallNdx = j
        if smallNdx != i:
            theSeq[i], theSeq[smallNdx] = theSeq[smallNdx], theSeq[i]
```

### Modified Code with Custom Order
We’ll add a `sortOrder` parameter: `'A'` for ascending and `'D'` for descending.
```python
def selectionSort(theSeq, sortOrder='A'):
    n = len(theSeq)
    for i in range(n - 1):
        targetIndex = i
        for j in range(i + 1, n):
            if (sortOrder == 'A' and theSeq[j] < theSeq[targetIndex]) or \
               (sortOrder == 'D' and theSeq[j] > theSeq[targetIndex]):
                targetIndex = j
        if targetIndex != i:
            theSeq[i], theSeq[targetIndex] = theSeq[targetIndex], theSeq[i]

# Test code
list_of_numbers = [10, 51, 2, 18, 4, 31, 13, 5, 23, 64, 29]
print('Ascending Order:')
selectionSort(list_of_numbers, 'A')
print(list_of_numbers)

print('Descending Order:')
selectionSort(list_of_numbers, 'D')
print(list_of_numbers)
```

### Expected Output
```
Ascending Order:
[2, 4, 5, 10, 13, 18, 23, 29, 31, 51, 64]

Descending Order:
[64, 51, 31, 29, 23, 18, 13, 10, 5, 4, 2]
```

---

## 2. Insertion Sort with Pass-by-Pass Output

Modify the `insertionSort` function to print the state of the list after each pass.

### Original Code
```python
def insertionSort(theSeq):
    n = len(theSeq)
    for i in range(1, n):
        value = theSeq[i]
        pos = i
        while pos > 0 and value < theSeq[pos - 1]:
            theSeq[pos] = theSeq[pos - 1]
            pos -= 1
        theSeq[pos] = value
```

### Modified Code with Pass Output
```python
def insertionSort(theSeq):
    n = len(theSeq)
    for i in range(1, n):
        value = theSeq[i]
        pos = i
        while pos > 0 and value < theSeq[pos - 1]:
            theSeq[pos] = theSeq[pos - 1]
            pos -= 1
        theSeq[pos] = value
        print(f'Pass {i}:', theSeq)  # Print list after each pass

# Test code
list_of_numbers = [10, 51, 2, 18, 4, 31, 13, 5, 23, 64, 29]
print('Insertion Sort with Pass-by-Pass Output:')
insertionSort(list_of_numbers)
```

### Expected Output
```
Pass 1: [10, 51, 2, 18, 4, 31, 13, 5, 23, 64, 29]
Pass 2: [2, 10, 51, 18, 4, 31, 13, 5, 23, 64, 29]
Pass 3: [2, 10, 18, 51, 4, 31, 13, 5, 23, 64, 29]
Pass 4: [2, 4, 10, 18, 51, 31, 13, 5, 23, 64, 29]
...
Pass 10: [2, 4, 5, 10, 13, 18, 23, 29, 31, 51, 64]
```

---

## 3. Sorting with Python’s `sorted()` Function

### Task a: Sort Strings with Custom Grouping
Write a function that sorts a list of strings, grouping all items that start with 'H' first.

```python
def custom_string_sort(string_list):
    h_list = sorted([s for s in string_list if s.startswith('H')])
    non_h_list = sorted([s for s in string_list if not s.startswith('H')])
    return h_list + non_h_list

# Test code
flowers = ['Bougainvillea', 'Orchids', 'Hibiscus', 'Frangipani', 'Honeysuckle']
print('Sorted List with H-Grouping:', custom_string_sort(flowers))
```

### Expected Output
```
Sorted List with H-Grouping: ['Hibiscus', 'Honeysuckle', 'Bougainvillea', 'Frangipani', 'Orchids']
```

### Task b: Sort Tuples by Last Element
Write a function that sorts a list of tuples by the last element in each tuple.

```python
def sort_by_last_element(tuple_list):
    return sorted(tuple_list, key=lambda x: x[-1])

# Test code
tuples = [(1, 7), (1, 3), (3, 4, 5), (2, 2)]
print('Sorted List by Last Element:', sort_by_last_element(tuples))
```

### Expected Output
```
Sorted List by Last Element: [(2, 2), (1, 3), (3, 4, 5), (1, 7)]
```