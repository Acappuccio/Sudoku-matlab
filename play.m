function [] = play()
  grid = 0;
  options = ["A","B","C"];
  while isempty(find(options==grid(1)))
    clc;
    fprintf("\nHey there!\nReady to play some sudoku?\n\nTo get started, PICK A GRID SIZE!\n\nA) 4x4\nB) 9x9\nC) 16x16\n\n(The recommended size is 9x9)\n\n");
    grid = upper(strrep(input("Enter option (a/b/c): ","s")," ",""));
  end
  grid = [4,9,16](find(options==grid(1)));

  diff=0;
  while isempty(find(options==diff(1)))
    clc;
    fprintf(["\nSo a %dx%d grid, cool!\n\nNext, PICK A DIFFICULTY!\n\nA) Easy\nB) Medium\nC) Hard\n\n(Recommended to start with easy)\n\n"],grid,grid);
    diff = upper(strrep(input("Enter option (a/b/c): ","s")," ",""));
  end

  clc;
  fprintf(["One %s %dx%d board coming up!\njimmy a sec–"],{"easy","medium","hard"}{find(options==diff(1))}, grid, grid);
  diff = [0.3,0.5,0.7](find(options==diff(1)));
  pause(2);
  mat_ = set_difficulty(diff,genS(grid));
  clc;
  sudoku_difficulty(mat_);
  disp(mat_);
  graphS(mat_,false);
  try
    input("\nPress \"return\" once you're ready for the solution! ");
  catch e

  end
  graphS(mat_);
  clc;
  disp("Hope you had fun!\nFeel free to try another :)\n");
endfunction
