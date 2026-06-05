function [difficulty_rank] = sudoku_difficulty(puzzle)
  #{
  doc:
  subrule (2) = average zeros per subgrid
  difficulty_rank = how difficult it is (from 0 to 1, a decimal %)
  #}

  [n, z1] = subrule(puzzle);
  n=size(puzzle,1);
  difficulty_rank = (z1/n^2);
  clc;

    ranks = {"EASY","MEDIUM","HARD","INSANE?"};
    rank = ranks{floor(difficulty_rank*3)+1};
    printf(["\nSudoku %dx%d Puzzle\n  Difficulty Rank: %s (%d)\n\n"],n,n,rank,difficulty_rank);

end

#{
      00-33%   easy
      34-66%   medium
      67-99%   hard
       100%    INSANE?
#}
