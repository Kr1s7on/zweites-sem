# Process Scheduling Notes (Week 6)

## Introduction to Scheduling
- Scheduling is about managing how CPU time is shared between multiple processes/threads
- Requires context switching to work
- Scheduler selects ready threads to allocate CPU time
- Scheduling policy determines when to switch between threads
- Scheduling mechanism handles the actual process of switching

## Scheduling Mechanisms
### Three Main Components:
1. **Enqueuer**
   - Puts processes into ready list when they become ready
   - Can place new processes anywhere in list based on policy

2. **Context Switcher**
   - Saves CPU register contents when switching processes
   - Stores information in process descriptor

3. **Dispatcher**
   - Takes processes from ready list
   - Loads CPU registers from process descriptor

## Types of Schedulers

### Nonpreemptive (Voluntary) Schedulers
1. **First-Come-First-Served (FCFS)**
   - Simplest method
   - First process to arrive gets CPU first
   - Main drawback: Convoy effect (short processes stuck behind long ones)

2. **Shortest Job First (SJF)**
   - Picks process with shortest execution time
   - Optimal for minimizing average waiting time
   - Process keeps CPU until completion

3. **Priority Scheduling**
   - Assigns priority numbers to processes
   - Higher priority processes run first
   - Risk of starvation for low-priority processes

### Preemptive (Involuntary) Schedulers
1. **Preemptive SJF**
   - Can interrupt current process for shorter ones
   - Also called Shortest-Remaining-Time-First

2. **Preemptive Priority**
   - Can interrupt for higher priority processes
   - Uses aging to prevent starvation

3. **Round Robin (RR)**
   - Gives each process a time slice (quantum)
   - Usually 10-100 milliseconds
   - Good for time-sharing systems

4. **Multilevel Queues**
   - Processes grouped based on properties
   - Separate queues (e.g., foreground/background)
   - Each queue can use different scheduling algorithm

## Performance Metrics
- **Waiting Time**: Time spent in ready queue
- **Turnaround Time**: Total time from arrival to completion
- **Average Times**: Used to compare scheduler effectiveness

## Real-World Examples

### BSD 4.4 (Unix)
- Uses 32 multi-level queues
- Queues 0-7 for system functions
- Queues 8-31 for user functions
- Preemptive scheduling

### Windows
- 32 multi-level queues
- Top 16 levels for real-time processes
- Next 15 for system/user threads
- Lowest level for idle thread

## Quiz Section

### Q1: Which scheduling algorithm is considered the simplest to implement?

a) Round Robin  
b) First-Come-First-Served  
c) Shortest Job First  
d) Priority Scheduling

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: b</h3>

Explanation: FCFS is considered the simplest CPU scheduling algorithm as it simply queues processes in the order they arrive.
</details>

### Q2: What is the convoy effect?

a) Multiple processes running simultaneously  
b) Short processes stuck waiting behind long processes  
c) Processes moving between different priority queues  
d) Processes being preempted by higher priority tasks

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: b</h3>

Explanation: The convoy effect occurs in FCFS scheduling when short processes must wait for a long process to complete, resulting in lower CPU utilization.
</details>

### Q3: Which scheduling algorithm is considered optimal for minimizing average waiting time?

a) FCFS  
b) Round Robin  
c) Shortest Job First  
d) Priority Scheduling

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: c</h3>

Explanation: SJF is proven to give the minimum average waiting time for a given set of processes.
</details>

### Q4: What is the main problem with Priority Scheduling?

a) Convoy effect  
b) Time quantum overhead  
c) Starvation of low-priority processes  
d) Complex implementation

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: c</h3>

Explanation: Priority scheduling can lead to starvation where low-priority processes may never get executed if there's a constant stream of high-priority processes.
</details>

### Q5: What is the typical range for a time quantum in Round Robin scheduling?

a) 1-5 milliseconds  
b) 10-100 milliseconds  
c) 1-5 seconds  
d) 10-100 seconds

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: b</h3>

Explanation: Round Robin typically uses time quanta of 10-100 milliseconds to balance responsiveness with overhead.
</details>