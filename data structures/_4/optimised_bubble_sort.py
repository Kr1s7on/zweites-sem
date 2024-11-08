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

    return the_seq

# Test the function
seq = [9, 8, 2, 1, 1, 1, 0, -100, -2]
print(bubble_sort_optimized(seq))

