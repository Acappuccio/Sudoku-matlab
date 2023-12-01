## solve_sudoku

## Synopsis
The `solve_sudoku` function is used to find all possible solutions for a partially completed Sudoku puzzle using backtracking.

## Syntax 
```
function [solutions] = solve_sudoku(puzzle)
```

## Description 
The function takes a partially completed Sudoku puzzle represented as a 2D matrix (puzzle) and returns a matrix containing all possible solutions for the puzzle. It employs a backtracking algorithm to explore possible number assignments for each empty cell until a valid solution is found.


## Example



## Theroy 

The idea behind this is that the solve_sudoku function utilizes a backtracking approach to solve Sudoku puzzles. It assigns numbers repeatedly to empty cells, ensuring that the assignment is valid with respect to the Sudoku rules. If a valid assignment is not possible, it backtracks to the previous step and explores alternative assignments and repeats this until a solution is found.
