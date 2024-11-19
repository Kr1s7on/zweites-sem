def selectionSort(theSeq, sortOrder='ASC'):
    n = len(theSeq)
    for i in range(n - 1):
        
        targetIndex = i
        
        for j in range(i + 1, n):
            
            if (sortOrder == 'ASC' and theSeq[j] < theSeq[targetIndex]) or \
               (sortOrder == 'DSC' and theSeq[j] > theSeq[targetIndex]):
                targetIndex = j

        if targetIndex != i:
            theSeq[i], theSeq[targetIndex] = theSeq[targetIndex], theSeq[i]

# Test code
list_of_numbers = [10, 51, 2, 18, 4, 31, 13, 5, 23, 64, 29]
print('Ascending Order:')
selectionSort(list_of_numbers, 'ASC')
print(list_of_numbers)

print('Descending Order:')
selectionSort(list_of_numbers, 'DSC')
print(list_of_numbers)