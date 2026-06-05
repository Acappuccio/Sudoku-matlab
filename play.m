function [] = play()
grid = "";
options = ["A","B","C"];
while isempty(find(options==grid(1)))
    clc;
    fprintf("\nHey there!\nReady to play some sudoku?\n\nPICK A GRID SIZE!\n\nA) 4x4\nB) 9x9\nC) 16x16\n\n");
    grid = upper(strrep(input("Enter option (a/b/c): ","s")," ",""));
end
gridopts = [4,9,16];
grid = gridopts(find(options==grid(1)));
diff = "";
while isempty(find(options==diff(1)))
    clc;
    fprintf(["\nPICK A DIFFICULTY!\n\nA) Easy\nB) Medium\nC) Hard\n\n"]);
    diff = upper(strrep(input("Enter option (a/b/c): ","s")," ",""));
end
clc;
diffnames = {"easy","medium","hard"};
fprintf(["One %s %dx%d board coming up!\n"], diffnames{find(options==diff(1))}, grid, grid);
diffopts = [0.3,0.5,0.7];
diff = diffopts(find(options==diff(1)));
pause(1);
solved_ = genS(grid);
mat_ = set_difficulty(diff, solved_);
clc;
sudoku_difficulty(mat_);
disp(mat_);
fprintf('\nSolve the puzzle! (0 = empty cell)\n');
fprintf('Press Enter when ready to see the solution...\n');
input('');
clc;
fprintf('Solution:\n');
disp(solved_);
end