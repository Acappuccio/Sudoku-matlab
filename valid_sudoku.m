function [valid] = valid_sudoku(puzzle, row, col)

    % Check the 3x3 subgrid
    sz = sqrt(length(puzzle)); % subgrid size (ex: 9x9 mat = 3x3 subgrid)
    subGridI = @(rc) sz*floor((rc - 1) / sz) + 1;

    % Check all the rules
    valid = (rowrule(puzzle(row, :)) &... row rule
    rowrule(puzzle(:,col)) &... col rule
    rowrule(puzzle(subGridI(row):subGridI(row)+sz-1,subGridI(col):subGridI(col)+sz-1)(:)')); % sub rule

end
