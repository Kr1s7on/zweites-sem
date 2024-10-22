# Introduction to Operating Systems Notes

## Basic Concepts

### What is an Operating System?
* Acts as a middleman between users and computer hardware
* Creates an environment for running programs efficiently
* Doesn't perform useful functions alone but manages everything else

### Types of Software
1. Application Software
   * Used for specific tasks
   * Examples: Productivity tools, games, browsers

2. System Software
   * Interfaces with hardware
   * Platform for running programs
   * Includes:
     * Operating systems
     * Utility programs

## System Software Details
* Provides two environments:
  1. User interaction interface
  2. Tools for applications

* Common examples:
  * C library functions
  * Window systems
  * Database management
  * Resource management
  * Operating system itself

## Resource Management

### What is a Resource?
* Anything needed to run programs:
  * Memory
  * Disk space
  * CPU time

### Resource Abstraction
* Hides complex tasks from users
* Provides simple commands for complex operations
* Examples:
  * Writing files to disk
  * Displaying graphics
  * Running applications

### Resource Sharing
Two main types:
1. Space-multiplexed
   * Resource divided into parts
   * Each part given to different processes

2. Time-multiplexed
   * Entire resource given to processes in turns
   * Each gets full resource for a time period

## Multiprogramming
* Technique for sharing CPU among processes
* Benefits:
  * Better CPU utilization
  * Handles blocked processes efficiently
* Works automatically through scheduling

## OS Strategies

### Different Types:
1. Batch Processing
   * Jobs prepared offline
   * Processed one after another
   * No human interaction
   * Optimizes resource use

2. Timesharing Systems
   * Supports interactive computing
   * Multiple users simultaneously
   * Focuses on response time
   * Better security and protection

### Modern OS Examples
1. UNIX
   * Developed by AT&T Bell Labs (1970)
   * Command-line oriented
   * Open system
   * Various versions available

2. Linux
   * Open source UNIX
   * Started by Linus Torvalds (1991)
   * Community developed
   * POSIX compliant

3. Windows
   * GUI focused
   * Object-oriented design
   * Multiple versions
   * Uses Win32 API

# Knowledge Check Quiz

1. What is the primary function of an operating system?

<details>
<summary>Click to see answer</summary>

* Acts as intermediary between users and computer hardware
* Provides environment for program execution
* Manages system resources
</details>

2. What are the two main types of software in a computer system?

<details>
<summary>Click to see answer</summary>

1. Application Software - performs specific user tasks
2. System Software - interfaces with hardware and provides platform for other programs
</details>

3. What are the two types of resource sharing in operating systems?

<details>
<summary>Click to see answer</summary>

1. Space-multiplexed sharing - resource divided into parts
2. Time-multiplexed sharing - resource allocated to processes in turns
</details>

4. What is multiprogramming and why is it important?

<details>
<summary>Click to see answer</summary>

* Technique for sharing CPU among multiple processes
* Important because it:
  * Increases CPU utilization
  * Allows other processes to run while one is blocked
  * Improves overall system efficiency
</details>

5. Name three examples of system software resources:

<details>
<summary>Click to see answer</summary>

Any three of:
* C library functions
* Window systems
* Database management systems
* Resource management functions
* Operating system
</details>

6. What are the main characteristics of batch processing systems?

<details>
<summary>Click to see answer</summary>

* Jobs prepared offline
* Processes jobs sequentially
* No human interaction during processing
* Optimizes resource utilization
* Still used today as an option
</details>

7. What makes timesharing systems different from batch processing?

<details>
<summary>Click to see answer</summary>

* Supports interactive computing
* Creates illusion of multiple consoles
* Focuses on response time
* Better security and protection features
* Allows multiple users simultaneously
</details>

8. What are the three major modern operating systems discussed and one key feature of each?

<details>
<summary>Click to see answer</summary>

1. UNIX - Command-line oriented, open system
2. Linux - Open source, community developed
3. Windows - GUI focused, object-oriented design
</details>

9. What is resource abstraction and why is it important?

<details>
<summary>Click to see answer</summary>

* Hides complex tasks behind simple commands
* Makes it easier for users to use resources
* Simplifies program development
* Examples include file writing and graphics display
</details>

10. Why do we study operating systems?

<details>
<summary>Click to see answer</summary>

* To understand the model of operation
* To learn how to use the system effectively
* To write efficient code
* To understand OS design principles
</details>