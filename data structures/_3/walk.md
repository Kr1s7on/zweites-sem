### Practical 03 - Search

#### 1. Khan Academy - Binary Search
Based on the Khan Academy content, let's address the questions in detail.

##### (a) Visit the Khan Academy Binary Search Content
- This part asks you to visit the Khan Academy page on Binary Search and go through specific activities. No code or additional comments are required here, as this is a reading task.

##### (b) Questions Based on Binary Search Content

**(i)** **Mathematical Function for Repeated Halving**  
   - The mathematical function that describes the number of times we halve a number \( n \) until reaching 1 is **\( \log_2(n) \)**. This function counts the number of divisions by 2 required to reach 1, as shown in the example with 32 halving down to 1 in 5 steps.

**(ii)** **Growth Rate Function**  
   - The **logarithmic** function grows very slowly. **Logarithms** are the inverse of the **exponential** function, which grows very rapidly.

**(iii)** **Binary Search Pseudocode Completion**

   Here’s the completed pseudocode with comments for clarity:

   ```plaintext
   1. Let min = 0 and max = n - 1.
   2. If min > max, then stop: target is not present in the array. Return -1.
   3. Compute guess as the floor of (max + min) / 2, rounded down (so that it is an integer).
   4. If array[guess] equals target, then stop. You found it! Return guess.
   5. If the guess was too low, that is, array[guess] < target, then set min = guess + 1.
   6. Otherwise, the guess was too high. Set max = guess - 1.
   7. Go back to step 2.
   ```

#### 2. Sequential Search - Implementation
   Given code is for an unsorted list. We need to improve this for a sorted list to minimize comparisons.

   **New Function for Sorted Sequential Search with Fewer Comparisons**:
   
   ```python
   def sortedSequentialSearch(theValues, target):
       """
       Perform a sequential search on a sorted list.
       If an element greater than the target is found, stop the search early.
       """
       n = len(theValues)
       for i in range(n):
           # If the target is in the i-th element, return True
           if theValues[i] == target:
               return True
           # If an element greater than target is found, target cannot be present
           elif theValues[i] > target:
               return False
       # If not found, return False
       return False
   ```

   **Explanation**:  
   This function stops searching as soon as it finds an element larger than the target, making it more efficient for sorted lists.

#### 3. Binary Search - Complete the Code

   **Complete the Provided Binary Search Code**:
   
   ```python
   def binarySearch(theValues, target):
       """
       Perform a binary search on a sorted list of values to find the target.
       """
       # Start with the entire sequence of elements
       low = 0
       high = len(theValues) - 1

       # Repeatedly subdivide the sequence in half until the target is found
       while low <= high:
           # Find the midpoint of the sequence
           mid = (low + high) // 2

           # Check if the midpoint element is the target
           if theValues[mid] == target:
               return mid
           # If target is less than midpoint, it must be in the lower half
           elif target < theValues[mid]:
               high = mid - 1
           # If target is greater than midpoint, it must be in the upper half
           else:
               low = mid + 1

       # If we exit the loop, the target was not found
       return -1
   ```

##### (b) Modify Code to Find First Occurrence in Case of Duplicates

   **Modified Code to Return First Occurrence of Target**:
   
   ```python
   def binarySearchFirstOccurrence(theValues, target):
       """
       Perform a binary search on a sorted list to find the first occurrence of the target.
       """
       low = 0
       high = len(theValues) - 1
       result = -1  # Variable to store the position of the first occurrence

       while low <= high:
           mid = (low + high) // 2
           
           # If the target is found, record position and check left side
           if theValues[mid] == target:
               result = mid  # Record the current position
               high = mid - 1  # Continue searching to the left
           elif target < theValues[mid]:
               high = mid - 1
           else:
               low = mid + 1

       return result  # Returns -1 if not found, or position of first occurrence
   ```

   **Explanation**:  
   This modified function keeps searching to the left side of the midpoint to ensure it finds the first occurrence when duplicates are present.

---

### Tutorial 03 - Search

#### 1. Sequential Search Comparisons
   **Question**: For the unsorted list `[12, 19, 3, 13, 20, 5, 8, 16, 6, 15]`, how many comparisons are needed to find `8`?

   - **Solution**: The sequential search proceeds element by element. To find `8` (the 7th element), it would need **7 comparisons**.

#### 2. Sequential Search on a Sorted List
   **Question**: For the sorted list `[3, 6, 8, 10, 11, 15, 17, 18, 19, 20]`, how many comparisons are needed to check for `12`?

   - **Solution**: Sequential search will continue until it finds `15` (after `12` in sorted order) at index 5. Therefore, **6 comparisons** are required.

#### 3. Binary Search for Value `63`
   - **Table for Binary Search Execution**:
     Using binary search on the list, the following table tracks each step:

     | Pass | Low Pointer | Mid Pointer | High Pointer | Found (Yes/No) |
     |------|-------------|-------------|--------------|----------------|
     | 1    | 0           | 5           | 10           | No             |
     | 2    | 6           | 8           | 10           | No             |
     | 3    | 6           | 6           | 7            | Yes            |

#### 4. Binary Search for Value `18`
   - **Table for Binary Search Execution**:
     Using binary search on the list for `18`, the following table tracks each step:

     | Pass | Low Pointer | Mid Pointer | High Pointer | Found (Yes/No) |
     |------|-------------|-------------|--------------|----------------|
     | 1    | 0           | 5           | 10           | No             |
     | 2    | 0           | 2           | 4            | No             |
     | 3    | 0           | 1           | 1            | No             |
     | 4    | 0           | 0           | 0            | No             |

