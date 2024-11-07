# Linear Programming Basics (W4)

## What is Linear Programming?
Despite its name, linear programming isn't about computer programming! It's a method for making optimal decisions when dealing with limited resources. The word "programming" here just means "planning."

## Real-World Uses
Linear programming helps solve many business problems, like:
- Deciding how to spend an advertising budget across different platforms (TV, radio, social media)
- Planning how much of each product to make in a factory
- Creating the best investment portfolio with limited money

## Key Components
1. **Objective Function**: What you're trying to maximize or minimize
   - Example: Maximize profit, Minimize costs
   - Must be a linear function (no multiplication between variables)

2. **Constraints**: The limits you have to work within
   - Example: Limited budget, machine time, or raw materials
   - Must also be linear

3. **Decision Variables**: The things you can control
   - Usually represented as x₁, x₂, etc.
   - Example: Number of products to make, hours to spend on each activity

## Simple Example
Let's look at a real problem:

**RMC Chemical Company Problem:**
- They make two products:
  1. Fuel additive
  2. Solvent base
- They want to maximize profit
- Each product needs different raw materials
- They have limited materials available

The math looks like this:
```
Maximize: 40x + 30y
Where:
x = tons of fuel additive
y = tons of solvent base
```

Subject to material limits (constraints):
- Can't use more materials than available
- Can't make negative amounts of products

The solution shows they should make:
- 25 tons of fuel additive
- 20 tons of solvent base
- This gives them $1,600 in profit

## Tips for Solving
1. Understand the problem completely before starting
2. Identify what you're trying to maximize or minimize
3. List all your limitations (constraints)
4. Define your variables clearly
5. Write everything as mathematical expressions
6. Use tools like Excel Solver to find the solution

## Important Note
The solution must be:
- **Feasible**: Meets all constraints
- **Optimal**: Gives the best possible result (highest profit or lowest cost)

This method helps businesses make better decisions when dealing with limited resources, which is something every business faces!