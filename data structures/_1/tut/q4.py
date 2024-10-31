"""
4. What  parameters  should  be  sent  to  the  range  constructor,  to  produce  a  range  with values: 

a) 50, 60, 70, 80 
b) 8, 6, 4, 2, 0, -2, -4, -6, -8 

Code Logic:
    a) 50, 60, 70, 80
        - Start from 50 and end at 80 with a step of 10
        - range(50, 81, 10)
        
    b) 8, 6, 4, 2, 0, -2, -4, -6, -8
        - Start from 8 and end at -9 with a step of -2
        - range(8, -9, -2)
"""

# Test cases
print(list(range(50, 81, 10)))  # [50, 60, 70, 80]
print(list(range(8, -9, -2)))  # [8, 6, 4, 2, 0, -2, -4, -6, -8]
