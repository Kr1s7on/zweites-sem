# lecture review 6 walkthrough

What are the 3 main components required in the scheduling mechanism? Briefly describe each of them.

1. **Enqueuer**
   - Puts processes into ready list when they become ready
   - Can place new processes anywhere in list based on policy

2. **Context Switcher**
   - Saves CPU register contents when switching processes
   - Stores information in process descriptor

3. **Dispatcher**
   - Takes processes from ready list
   - Loads CPU registers from process descriptor

