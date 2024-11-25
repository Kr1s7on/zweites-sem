# Process Management (Week 5)

## Core Concepts

### Processes
- A process is a binary program in execution
- Components of a process:
  - Binary program (executable code)
  - Data for program execution
  - Required resources (files, devices)

### Threads
- A thread is a single execution engine within a process
- Can execute a series of instructions in a program
- Thread-specific data (private):
  - Program counter
  - Thread status
  - Processor registers
  - Stack space
- Shared elements between threads in same process:
  - Program code
  - Data
  - Resources

## Process Types

### Single-threaded Process
- Classic process design
- One execution engine per process
- Single thread of execution

### Multi-threaded Process
- Modern process design
- Multiple execution engines in one process
- Multiple threads can run simultaneously
- Benefits:
  - Better responsiveness
  - Efficient resource sharing
  - Easier memory management
  - Better utilization of multiprocessor systems

## Process Management

### Process Manager Responsibilities
- Define and implement process/thread characteristics
- Manage process resources
- Schedule processes on CPU
- Handle thread synchronization
- Manage deadlocks
- Implement protection mechanisms

### Process Control Block (PCB)
- Also known as Process Descriptor
- Contains:
  - Process ID
  - Program counter
  - Register values
  - Process state
  - Resource information
  - Security keys

## Process States and Transitions

### Basic Process States
1. Running: Currently executing instructions
2. Blocked: Waiting for an event
3. Ready: Waiting to be assigned to processor
4. Done: Finished execution

### Context Switching
- Occurs when CPU switches between processes/threads
- Can only happen when OS controls CPU through:
  - Traps
  - Interrupts

## Operating System Implementations

### UNIX Processes
- Each process has unique address space:
  - Text segment
  - Data segment
  - Stack segment
- Managed through process descriptors
- Uses Process ID (PID) as handle

### Windows NT Model
- Supports multiple threads through Win32 API
- CreateProcess() function options:
  - Create child process with single thread
  - Create additional threads in current process

## Practice Quiz

### Q1: What is the definition of a process?

a) A program stored on the hard disk  
b) A binary program in execution  
c) A collection of files in memory  
d) An application installed on the computer  

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: b</h3>

Explanation: A process is specifically defined as a binary program in execution, which includes the program code, its data, and required resources.
</details>

### Q2: Which of the following is NOT thread-specific data?

a) Program counter  
b) Program code  
c) Stack space  
d) Thread status  

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: b</h3>

Explanation: Program code is shared among all threads in a process. The other options (program counter, stack space, and thread status) are thread-specific data.
</details>

### Q3: What is a key difference between single-threaded and multi-threaded processes?

a) Single-threaded processes are faster  
b) Multi-threaded processes cannot share resources  
c) Multi-threaded processes have multiple execution engines  
d) Single-threaded processes use less memory  

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: c</h3>

Explanation: The key difference is that multi-threaded processes have multiple execution engines (threads) that can run simultaneously, while single-threaded processes have only one execution engine.
</details>

### Q4: When can a context switch occur?

a) Any time during program execution  
b) Only when a program starts  
c) Only when the OS gets control through traps or interrupts  
d) Only when a process terminates  

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: c</h3>

Explanation: Context switching can only occur when the operating system gains control of the CPU through traps or interrupts.
</details>

### Q5: Which process state indicates that the process is waiting for some event to occur?

a) Running  
b) Ready  
c) Blocked  
d) Done  

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: c</h3>

Explanation: The Blocked state indicates that a process is waiting for some event (such as I/O completion) to occur before it can continue execution.
</details>

### Q6: What is NOT included in a Process Control Block (PCB)?

a) Process ID  
b) Source code  
c) Program counter  
d) Security keys  

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: b</h3>

Explanation: The PCB (Process Control Block) contains process management information but not the source code. It includes process ID, program counter, register values, and security keys.
</details>

### Q7: Which of these is a benefit of multi-threaded programming?

a) Increased process isolation  
b) Reduced security risks  
c) Better resource sharing  
d) Simplified programming  

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: c</h3>

Explanation: Resource sharing is a key benefit of multi-threaded programming as threads within the same process can share resources efficiently.
</details>

### Q8: In UNIX processes, what does PID represent?

a) Process Internal Data  
b) Process Identifier  
c) Process Internal Directory  
d) Process Integration Data  

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: b</h3>

Explanation: PID stands for Process Identifier, which is a unique handle used by the operating system to identify and manage processes.
</details>

### Q9: What components do threads within the same process share?

a) Stack space only  
b) Program counter and registers  
c) Program code and data  
d) Thread status information  

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: c</h3>

Explanation: Threads within the same process share program code and data, while maintaining their own private stack space, program counter, and registers.
</details>

### Q10: Which statement about context switching is correct?

a) It only occurs between single-threaded processes  
b) It never involves saving register values  
c) It happens when switching between processes or threads  
d) It's only used in Windows operating systems  

<details>
<summary>Correct Answer</summary>
<h3>Correct Answer: c</h3>

Explanation: Context switching occurs when the CPU switches between different processes or threads, requiring the saving and loading of execution context (including register values and program counters).
</details>