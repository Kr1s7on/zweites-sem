# Tower of Hanoi: 3 disks

def HSolver (i, start, end, middle):
    """
    Move: 7 moves total
        smallest to final peg (2)
        med to middle peg (1)
        smallest to middle peg (1)
        largest to final peg (2)
        smallest to starting peg (1)
        med to final peg (1)
        smallest to final peg (2)
        
    """
    # Best case if theres only one disk, move directly from start to end
    if i == 1:
        print(f"Move a disk from peg {start} to peg {end}")
        return # End since no need to move the disk anymore
    
    # Recursive: move i-1 disks from start to middle
    HSolver(i-1, start, middle, end)
    
    # Move remaining disk from start to end
    print(f"Move a disk from peg {start} to peg {end}")
    
    # Move i-1 disks from middle to end
    HSolver(i-1, middle, end, start)

i = 3
HSolver(i, '1', '3', '2')
