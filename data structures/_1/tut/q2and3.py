"""
    2. Write a short Python function sum_of_squares(n) that takes a positive integer n and 
    returns the sum of the squares of all the positive integers smaller than or equal to n. 
"""
# Logic to get solution
"""
    It starts with a variable sum that is initialized to 0.
    Then, it iterates over the range of numbers from 1 to n (inclusive).
    For each number i, it adds the square of i to the sum.
    Finally, it returns the sum.
"""

# def sum_of_squares(n):
#     inputN = n
#     sum = 0
    
#     for i in range(1, inputN+1):
#         sum += i**2
#     return sum

# print(sum_of_squares(5)) # 55


"""
3. Modify  the  sum_of_squares(n)  function  written  for  Qn.  2  such  that  it  now  takes  a  positive  integer  n  and  returns  the  sum  of  the  squares  of  all  the  odd  positive  integers  smaller than or equal to n.  

(NOTE: Do not use the modulus operator in implementing your solution.)
"""

def sum_of_squares(n):
    inputN = n
    sum = 0
    
    for i in range(1, inputN+1, 2):
        sum += i**2
    return sum

print(sum_of_squares(5)) # 35