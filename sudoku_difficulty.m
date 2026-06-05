function [difficulty_rank] = sudoku_difficulty(puzzle)
[~, z1] = subrule(puzzle);
n = size(puzzle,1);
difficulty_rank = z1;
ranks = {"EASY","MEDIUM","HARD","INSANE?"};
idx = min(floor(difficulty_rank*3)+1, 4);
rank = ranks{idx};
fprintf("\nSudoku %dx%d Puzzle\n  Difficulty Rank: %s (%.2f)\n\n",n,n,rank,difficulty_rank);
end