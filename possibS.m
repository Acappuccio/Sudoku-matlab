function [a] = possibS(mat, col, row)
    % Get grid size
    grid = size(mat, 1);
    a = sqrt(grid);
    
    % Calculate subsquare index
    subsq = ((ceil(col/a)-1)*a) + ceil(row/a);

    % Run subrule for matrix (Ensure it's a cell array)
    a = subrule(mat);

    % Convert `a` to a cell array if it isn't already
    if ~iscell(a)
        error('Error: subrule() must return a cell array, but it returned a matrix.');
    end

    % Check if subsq is a valid index
    if subsq > length(a) || subsq < 1
        error('Error: subsq index is out of bounds.');
    end

    % Get all possible numbers based on sub rule
    possib1 = a{subsq};  % Only works if `a` is a cell array

    % Get all possible numbers based on row and column rules
    possib2 = rowrule(mat(col, :)); % Column rule
    possib3 = rowrule(mat(:, row)); % Row rule

    % Convert to numeric arrays
    possib1 = cell2mat(possib1);
    possib2 = cell2mat(possib2);
    possib3 = cell2mat(possib3);

    % Define default possible numbers
    d = 1:grid;

    % Add 0 at the end of possibilities
    possib1 = [possib1, 0];
    possib2 = [possib2, 0];
    possib3 = [possib3, 0];

    % Find similarities between possibilities
    a = find([d .* sum(d == possib1') .* sum(d == possib2') .* sum(d == possib3')] ~= 0);
end
