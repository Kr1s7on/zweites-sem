def selection_sort_desc(the_seq):
    n = len(the_seq)
    for i in range(n - 1):
        
        max_index = i

        for j in range(i + 1, n):
            if the_seq[j] > the_seq[max_index]:
                max_index = j

        # Swap the maximum element with the first unsorted position
        the_seq[i], the_seq[max_index] = the_seq[max_index], the_seq[i]

    return the_seq
    
# Test the function
the_seq = [9, 8, 2, 1, 1, 1, 0, -100, -2]
print(selection_sort_desc(the_seq))