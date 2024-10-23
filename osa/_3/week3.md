# Computer Organization Notes (Chapter 3)

## Von Neumann Architecture Basics
* Forms the basis of modern computers
* Uses stored program concept
* Has fixed electronic parts controlled by variable programs
* Main components:
  1. Central Processing Unit (CPU)
  2. Primary Memory Unit
  3. I/O Devices
  4. Interconnecting Buses

## Computer Programs
* Types of Programs:
  1. Source Files (High-level)
     * Written in languages like C, Java, Python
  2. Assembly Language (Low-level)
     * Processor specific
  3. Machine Language
     * Binary code that computers actually execute
     * Programs must be compiled to this form

## CPU Components
### 1. Arithmetic Logic Unit (ALU)
* Acts like a fast calculator
* Contains:
  * Functional unit for operations
  * 32-64 registers (very fast memory)
  * Can perform arithmetic and logical operations
  * Communicates with primary memory

### 2. Control Unit
* Manages instruction execution
* Contains:
  * Fetch Unit - Gets instructions from memory
  * Decode Unit - Interprets instructions
  * Execute Unit - Runs instructions
  * Important registers:
    * Instruction Register (IR) - Holds current instruction
    * Program Counter (PC) - Points to next instruction

## Primary Memory Unit
* Stores both programs and data
* Has three main registers:
  1. Memory Address Register (MAR)
  2. Memory Data Register (MDR)
  3. Command Register (CMD)
* Often called RAM
* Uses binary format

## I/O Operations

### Device Controllers
* Control individual device operations
* Connect devices to computer's bus
* Provide interface for OS
* Include:
  * Data registers
  * Command registers
  * Status flags (busy, done, error codes)

### I/O Completion Methods
1. Polling
   * CPU repeatedly checks device status
   * Simple but wastes CPU cycles
   * Uses busy-wait command

2. Interrupt
   * Device signals CPU when done
   * More efficient but more complex
   * Uses interrupt request flag
   * CPU checks flag during fetch cycle

### Direct Memory Access (DMA)
* Allows devices to access memory without CPU
* More efficient for large data transfers
* DMA controller works like mini-CPU
* CPU can do other work during transfers

# Knowledge Check Quiz

1. What are the main components of the von Neumann Architecture?

<details>
<summary>Click to see answer</summary>

* Central Processing Unit (CPU)
* Primary Memory Unit
* I/O Devices
* Interconnecting Buses
</details>

2. What are the three levels of programming languages discussed, from highest to lowest level?

<details>
<summary>Click to see answer</summary>

1. High-level languages (C, Java, Python)
2. Assembly language (processor specific)
3. Machine language (binary code)
</details>

3. What are the two main components of the CPU?

<details>
<summary>Click to see answer</summary>

1. Arithmetic Logic Unit (ALU)
2. Control Unit
</details>

4. Name the three main registers in the Primary Memory Unit:

<details>
<summary>Click to see answer</summary>

1. Memory Address Register (MAR)
2. Memory Data Register (MDR)
3. Command Register (CMD)
</details>

5. What are the two methods for determining I/O completion?

<details>
<summary>Click to see answer</summary>

1. Polling
   * CPU repeatedly checks device status
   * Simple but inefficient

2. Interrupt
   * Device signals CPU when done
   * More efficient but more complex
</details>

6. What is Direct Memory Access (DMA) and why is it important?

<details>
<summary>Click to see answer</summary>

* Allows devices to access memory without CPU involvement
* More efficient for large data transfers
* Lets CPU perform other tasks during data transfer
* Significantly improves I/O performance
</details>

7. What are the main components of the Control Unit?

<details>
<summary>Click to see answer</summary>

* Fetch Unit
* Decode Unit
* Execute Unit
* Instruction Register (IR)
* Program Counter (PC)
</details>

8. What information does a device controller interface typically include?

<details>
<summary>Click to see answer</summary>

* Data registers
* Command registers
* Status flags including:
  * Done flag
  * Busy flag
  * Error codes
</details>

9. What is the main disadvantage of using polling for I/O completion?

<details>
<summary>Click to see answer</summary>

* Wastes CPU cycles with busy-waiting
* CPU continuously checks device status instead of doing other work
* Inefficient use of processor resources
</details>

10. Why do we need to understand computer organization when studying operating systems?

<details>
<summary>Click to see answer</summary>

* OS design and implementation depends on computer function
* Understanding computer organization is critical for OS design
* Helps appreciate how OS interacts with hardware
* Essential for understanding system performance and limitations
</details>