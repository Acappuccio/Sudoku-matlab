function []=test_sudoku_difficulty();
% Easy puzzle (least amount of zeros)
easy_puzzle = zeros(1);

% Medium puzzle
medium_puzzle = zeros(2);

% Hard puzzle
hard_puzzle = zeros(4);

% Test the function with each puzzle
tolerance = 1e-6; 
difficulty_rank_easy = sudoku_difficulty(easy_puzzle);
difficulty_rank_medium = sudoku_difficulty(medium_puzzle);
difficulty_rank_hard = sudoku_difficulty(hard_puzzle);

% Display the results
fprintf('\nTest Results:\n');
fprintf('Expected Output: Easy, Medium, Hard\n');
fprintf('Actual Output: %s, %s, %s\n', difficulty_rank_easy, difficulty_rank_medium, difficulty_rank_hard);

% Check the results with tolerance
assert(difficulty_rank_easy < 0.3 + tolerance, 'Test case 1 failed');
assert(difficulty_rank_medium >= 0.3 - tolerance && difficulty_rank_medium < 0.6 + tolerance, 'Test case 2 failed');
assert(difficulty_rank_hard >= 0.6 - tolerance, 'Test case 3 failed');
end