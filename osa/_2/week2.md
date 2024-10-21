# Week 2 - Operating System Organization

## Basic Introduction
* An Operating System (OS) provides an environment for running programs
* Different OS can be organized differently but share common services
* Main goal: Make computer easy to use and ensure efficient operation

## OS Services
### For User Convenience:
1. User Interface
   * Different types: Batch, Command line, GUI
   * Helps users interact with computer

2. Program Execution
   * Loads programs
   * Runs programs
   * Terminates programs

3. Input/Output Operations
   * Manages devices like:
     * Files
     * CD/DVD drives
     * Display screens
     * Smart cards

4. File System Tasks
   * Create/read/write/delete files
   * Manage folders
   * Control who can access what

5. Communications
   * Helps programs talk to each other
   * Works both locally and over network

6. Error Handling
   * Finds problems
   * Takes action to fix issues

### For System Efficiency:
1. Resource Management
   * Shares computer resources fairly between users
   * Uses different methods for different resources

2. System Tracking
   * Keeps track of how resources are used
   * Monitors things like CPU, printer usage
   * Helps improve system performance

3. Protection and Security
   * Keeps system safe from unauthorized access
   * Controls access to resources
   * Keeps records of who accessed what

## Main OS Functions
Four basic groups of functions:
1. Device Management
   * Handles hardware devices
2. Process Management
   * Controls programs and resources
3. Memory Management
   * Handles computer memory
4. File Management
   * Manages files and storage

## OS Requirements
* Must manage shared resources
* Controls when different programs can use resources
* Keeps programs isolated from each other
* Manages how resources are shared

## Implementation Details
### Processor Modes
* Two main modes:
  1. Supervisor Mode (for OS)
     * Can do everything
     * Full access to all instructions and memory
  2. User Mode (for regular programs)
     * Limited capabilities
     * Can't access all memory or instructions

### Kernels
* Most important part of OS
* Runs in supervisor mode
* Makes sure everything works correctly

### Ways to Request OS Services
1. System Call
   * Direct request to OS
   * More efficient
   * Like making a phone call

2. Message Passing
   * Programs send messages to request services
   * Less efficient but more flexible
   * Like sending a letter

## Modern OS Architecture
Two main approaches:
1. Monolithic Kernel
   * Everything in one big piece
   * Faster but more complex

2. Microkernel
   * Only essential functions in kernel
   * Rest of functions separate
   * More organized but slightly slower

## Key Takeaways
* OS manages everything in your computer
* Provides services for users and system efficiency
* Uses different modes to keep system secure
* Can be organized in different ways but has same basic functions
* Main job is to make computer usable and efficient

# Knowledge Check

1. **What are the four major functions common to all operating systems?**
   <details>
   <summary>Click to see answer</summary>

   - Device management
   - Process, thread and resource management
   - Memory management
   - File management

   </details>

2. **Name three services that an OS provides for user convenience.**
   <details>
   <summary>Click to see answer</summary>
   Any three of these:

   - User interface
   - Program execution
   - Input/Output operations
   - File-system manipulation
   - Communications
   - Error detection

   </details>

3. **What are the two processor modes in modern processors, and what's the main difference between them?**
   <details>
   <summary>Click to see answer</summary>

   - **Supervisor mode:**
     - Can execute all machine instructions
     - Can access all memory locations

   - **User mode:**
     - Can only execute non-privileged instructions
     - Can only access user space memory

   </details>

4. **What are the two techniques for requesting services from the OS?**
   <details>
   <summary>Click to see answer</summary>

   - System call
   - Message passing

   Note: System calls are generally more efficient as they only require a trap command, while message passing has additional overhead.
   </details>

5. **What are the two main approaches to modern OS architecture?**
   <details>
   <summary>Click to see answer</summary>

   - **Monolithic kernel approach:**
     - All four basic modules combined into a single software module

   - **Microkernel approach:**
     - Small kernel implementing only essential functions
     - Other functions implemented outside kernel

   </details>

6. **What are three basic services that ensure efficient operation of the system?**
   <details>
   <summary>Click to see answer</summary>

   - Resource allocation
   - Accounting (usage statistics)
   - Protection and security

   </details>

7. **What is the primary purpose of the kernel in an operating system?**
   <details>
   <summary>Click to see answer</summary>

   - It's the critical part of OS essential for correct operation
   - Implements basic mechanisms that ensure secure operation
   - Executes in supervisor mode
   - Contains trusted software necessary for system operation

   </details>

8. **How does message passing work in OS service requests?**
   <details>
   <summary>Click to see answer</summary>

   - User program constructs a message requesting service
   - Uses OS send() system call
   - Kernel process must be in supervisor mode to receive message
   - User process waits for result with receive() operation
   - Kernel sends message back to user process on completion

   </details>

9. **What are the three basic mechanisms used to address isolation and sharing in OS?**
   <details>
   <summary>Click to see answer</summary>

   - Processor modes
   - Kernels
   - Method of invoking system service

   </details>

10. **What are the key OS requirements for resource management?**
    <details>
    <summary>Click to see answer</summary>

    - Time/space multiplexing
    - Exclusive use of resources when required
    - Isolation (protecting saved information)
    - Managed sharing (orderly resource sharing)

    </details>