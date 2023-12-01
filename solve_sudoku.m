function [solutions] = solveSudoku(puzzle)

% Initialize the puzzle size
    [rows, cols] = size(puzzle);

    % Check if the puzzle is square (N by N)
    if rows ~= cols
        error('The puzzle must be a square grid.');
    end

    % Initialize variables
    solutions = [];  % Store all solutions 
      % Find an empty cell
    [row, col] = find(puzzle == 0, 1);

    % If no empty cell is found, the puzzle is solved
    if isempty(row) || isempty(col)
        solutions = puzzle;  % Store the solution
        return;
    end
    
